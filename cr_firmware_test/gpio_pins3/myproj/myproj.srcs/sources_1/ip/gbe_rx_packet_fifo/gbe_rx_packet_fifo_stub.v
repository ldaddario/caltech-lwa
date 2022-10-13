// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Feb  7 22:10:48 2021
// Host        : jarvis running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/kplant/lwa_firmware/gpio_pins3/myproj/myproj.srcs/sources_1/ip/gbe_rx_packet_fifo/gbe_rx_packet_fifo_stub.v
// Design      : gbe_rx_packet_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvf1924-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *)
module gbe_rx_packet_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  overflow, empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[10:0],wr_en,rd_en,dout[10:0],full,overflow,empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [10:0]din;
  input wr_en;
  input rd_en;
  output [10:0]dout;
  output full;
  output overflow;
  output empty;
endmodule