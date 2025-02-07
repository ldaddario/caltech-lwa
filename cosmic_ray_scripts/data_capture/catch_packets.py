#!/usr/bin/env python

import time
import socket
import numpy as np

def process_packet(data,checkpacket):
    single_packet_array = np.zeros((256,16)) #allocate space
    timestamps = np.zeros(256)
    #get metadata for the packet
    
    this_board_triggered = data[21] #did this board's own trigger logic generate the trigger
    board_id = data[22]             #which board did this come from
    block_id = data[23]             #which block of antennas are in this packet. Combined with board ID, this determines antenna ids.
    
    for i in range(256):  #index for 256-bit words in the packet. Loops over time index within the packet
        #print(i)
        timestamps[i] = int.from_bytes(data[i*32+24:i*32+32],'big')  #time stamp is the last 8 bytes in the word
        datasamples = int.from_bytes(data[i*32:i*32+20], 'big') # the first 20 bytes are the data
        for j in range(16):  #index for antennas within this packet
            #unpack the ten bit numbers into 16 bit uints
            single_packet_array[i,j] = datasamples&0b1111111111 #take ten bits and put them in array
            datasamples = datasamples >> 10 #shift ten bits over
        
        if checkpacket:#  These should be the same value 256 times or else something's wrong
            this_board_triggered_current_value = data[32*i+21]
            board_id_current_value = data[32*i+22]
            block_id_current_value = data[32*i+23]
            if this_board_triggered_current_value != this_board_triggered:
                print ('trigger value does not match in word #' + str(i))
            if board_id_current_value != board_id:
                print('board_id value does not match in word #' + str(i))
            if block_id_current_value != block_id:
                print('block_id value does not match in word #' + str(i), block_id_current_value )
    if checkpacket:
        np.save('snapshots/single_packet' + str(time.time()),single_packet_array)
    return this_board_triggered, board_id, block_id, single_packet_array, timestamps


computer = 'lwacr'
if computer =='minor':
    RX_IP = "192.168.41.12"
if computer == 'lwacr':
    RX_IP = '10.41.0.106'
RX_PORT = 11111
RX_SIZE = 9000
EXPECTED_PACKETS_PER_BURST = 64

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.settimeout(1) # seconds(?)

s.bind((RX_IP, RX_PORT))

old_pkt_count = 0
pkt_count = 0
pkt_index = 0
n_bursts = 0 # A burst is a run of packets separated by < 1 second
single_board_snapshot = np.zeros((4096,68)) #68 because four rows are for each block's timestamps
try:
    while(True):
        try:
            d = s.recv(RX_SIZE)
            antenna_block_id = pkt_index//16
            time_block_id = pkt_index%16
            #TODO: save board id and this_board_triggered as metadata
            this_board_triggered, board_id, block_id, single_packet_array, timestamps = process_packet(d,True)
            print('time_start_index',256*time_block_id,'block from packet index',antenna_block_id,'block from packet', block_id,'first timestamp',timestamps[0])
            single_board_snapshot[256*(time_block_id):256*(time_block_id +1),antenna_block_id] = timestamps 
            single_board_snapshot[256*(time_block_id):256*(time_block_id +1),4+antenna_block_id*16:4+(antenna_block_id+1)*16] = single_packet_array
            #single_board_snapshot[256*(time_block_id):256*(time_block_id +1),antenna_block_id] = 1
            #single_board_snapshot[256*(time_block_id):256*(time_block_id +1),16:32] = 1
            pkt_count += 1
            pkt_index +=1
            if pkt_index == 64:  #end of the snpshot
                pkt_index = 0  #reset the index in case more packets from a new burst come before timeout
                np.save('snapshots/single_board_snapshot' + str(time.time()),single_board_snapshot) #save the burst
                single_board_snapshot = np.zeros((4096,68)) # make a new array for the next burst
        except socket.timeout:
            # If the receive times out and the number of packets
            # has changed then assume this is the end of the burst
            # and report the packet number
            if old_pkt_count != pkt_count:
                n_bursts += 1
                missing = (n_bursts * EXPECTED_PACKETS_PER_BURST) - pkt_count
                print("Received %d packets (%d bursts of 64 with %d missing)" % (pkt_count, n_bursts, missing))
                if pkt_index!=0:
                    np.save('snapshots/single_board_snapshot' + str(time.time()),single_board_snapshot) #save the burst
                    single_board_snapshot = np.zeros((4096,68)) # make a new array for the next burst
            old_pkt_count = pkt_count
            
except KeyboardInterrupt:
    print("Exiting. %d packets received" % pkt_count)
