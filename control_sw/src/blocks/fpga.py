import socket
import time
import datetime

from .block import Block
from lwa_f.error_levels import *
from lwa_f import __version__

import casperfpga.sysmon

class Fpga(Block):
    """
    Instantiate a control interface for top-level FPGA control.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    """
    def __init__(self, host, name, logger=None):
        # Top-level F-engine sees all registers
        super(Fpga, self).__init__(host, name, logger)

        ## Try and get the canonical name of the host
        ## to use as a serial number
        #self.serial = None
        #try:
        #    addr = socket.gethostbyname_ex(self.host.host)[2][0]
        #    time.sleep(0.01)
        #    hostname = socket.gethostbyname_ex(addr)
        #    hostname = hostname[0]
        #    if hostname.startswith('snap'):
        #        try:
        #            self.serial = int(hostname.split('.')[0][4:])
        #        except:
        #            self._warning("hostname (%s) couldn't be turned into integer serial" % hostname)
        #    else:
        #        self._warning("hostname (%s) couldn't be turned into integer serial" % hostname)
        #except:
        #    self._exception("Couldn't get hostname of address %s" % self.host.host)

        self.sysmon = casperfpga.sysmon.Sysmon(self.host)

    def get_fpga_clock(self):
        """
        Estimate the FPGA clock, by polling the ``sys_clkcounter`` register.
        
        :return: Estimated FPGA clock in MHz
        :rtype: float

        """
        return self.host.estimate_fpga_clock()

    def get_firmware_version(self):
        """
        Read the firmware version register and return the contents as a string.

        :return version: major_version.minor_version.revision.bugfix
        :rtype str:
        """
        v = self.read_uint('version_version')
        major  = (v >> 24) & 0xff
        minor  = (v >> 16) & 0xff
        rev    = (v >>  8) & 0xff
        bugfix = (v >>  0) & 0xff
        return "%d.%d.%d.%d" % (major, minor, rev, bugfix)

    def get_build_time(self):
        """
        Read the UNIX time at which the current firmware was built.

        :return build_time: Seconds since the UNIX epoch at which the running
            firmware was built.

        :rtype int:
        """
        t = self.read_uint('version_timestamp')
        return t

    def is_programmed(self):
        """
        Lazy check to see if a board is programmed.
        Check for the "version_version" register. If it exists, the board is deemed programmed.
        
        :return: True if programmed, False otherwise.
        :rtype: bool

        """
        return 'version_version' in self.listdev()

    def get_status(self):
        """
        Get status and error flag dictionaries.

        Status keys:

            - programmed (bool) : ``True`` if FPGA appears to be running DSP
              firmware. ``False`` otherwise, and flagged as a warning.

            - flash_firmware (str) : The name of the firmware file currently
              loaded in flash memory.

            - flash_firmware_md5 (str) : The MD5 checksum of the firmware file
              currently loaded in flash memory.

            - timestamp (str) : The current time, as an ISO format string.

            - serial (str) : The serial number / identifier for this board.
              Flagged with a warning if no serial is available.

            - host (str) : The host name of this board.

            - sw_version (str) : The version string of the control software
              package. Flagged as warning if the version indicates a build
              against a dirty git repository.

            - fw_version (str): The version string of the currently running
              firmware. Available only if the board is programmed.

            - fw_build_time (int): The build time of the firmware,
              as an ISO format string. Available only if the board 
              is programmed.

            - sys_mon (str) : ``'reporting'`` if the current firmware has a
              functioning system monitor module. Otherwise ``'not reporting'``,
              flagged as an error.

            - temp (float) : FPGA junction temperature, in degrees C. (Only
              reported is system monitor is available). Flagged as a warning
              if outside the recommended operating conditions. Flagged as an
              error if outside the absolute maximum ratings. See DS892.

            - vccaux (float) : Voltage of the VCCAUX FPGA power rail. (Only
              reported is system monitor is available). Flagged as a warning
              if outside the recommended operating conditions. Flagged as an
              error if outside the absolute maximum ratings. See DS892.

            - vccbram (float) : Voltage of the VCCBRAM FPGA power rail. (Only
              reported is system monitor is available). Flagged as a warning
              if outside the recommended operating conditions. Flagged as an
              error if outside the absolute maximum ratings. See DS892.

            - vccint (float) : Voltage of the VCCINT FPGA power rail. (Only
              reported is system monitor is available). Flagged as a warning
              if outside the recommended operating conditions. Flagged as an
              error if outside the absolute maximum ratings. See DS892.


        :return: (status_dict, flags_dict) tuple. `status_dict` is a dictionary of
            status key-value pairs. flags_dict is
            a dictionary with all, or a sub-set, of the keys in `status_dict`. The values
            held in this dictionary are as defined in `error_levels.py` and indicate
            that values in the status dictionary are outside normal ranges.
        """
        stats = {}
        flags = {}
        stats['programmed'] = self.is_programmed()
        meta = self.host.transport.get_metadata()
        stats['flash_firmware'] = meta['filename']
        stats['flash_firmware_md5'] = meta['md5sum']
        stats['timestamp'] = datetime.datetime.now().isoformat()
        #stats['serial'] = self.serial
        stats['host'] = self.host.host
        stats['sw_version'] = __version__
        if stats['programmed']:
            stats['fw_version'] = self.get_firmware_version()
            stats['fw_build_time'] = datetime.datetime.fromtimestamp(self.get_build_time()).isoformat()
        try:
            stats.update(self.sysmon.get_all_sensors())
            stats['sys_mon'] = 'reporting'
            flags['sys_mon'] = FENG_OK
        except:
            stats['sys_mon'] = 'not reporting'
            flags['sys_mon'] = FENG_ERROR
        if not stats['programmed']:
            flags['programmed'] = FENG_WARNING
        if stats['sw_version'].endswith('dirty'):
            flags['sw_version'] = FENG_WARNING
        #if stats['serial'] is None:
        #    flags['serial'] = FENG_WARNING
        if 'vccaux' in stats:
            if stats['vccaux'] < 1.746 or stats['vccaux'] > 1.854:
                flags['vccaux'] = FENG_WARNING
            if stats['vccaux'] < -0.5 or stats['vccaux'] > 2.0:
                flags['vccaux'] = FENG_ERROR
        if 'vccbram' in stats:
            if stats['vccbram'] < 0.922 or stats['vccbram'] > 0.979:
                flags['vccbram'] = FENG_WARNING
            if stats['vccbram'] < -0.5 or stats['vccbram'] > 1.1:
                flags['vccbram'] = FENG_ERROR
        if 'vccint' in stats:
            if stats['vccint'] < 0.922 or stats['vccint'] > 0.979:
                flags['vccint'] = FENG_WARNING
            if stats['vccint'] < -0.5 or stats['vccint'] > 1.1:
                flags['vccint'] = FENG_ERROR
        if 'temp' in stats:
            if stats['temp'] < 0 or stats['temp'] > 85:
                flags['temp'] = FENG_WARNING
            if stats['temp'] > 125:
                flags['temp'] = FENG_ERROR
        return stats, flags
