// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.3 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module inPlaceNTT_DIT_mul_64s_64s_64_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 64;
parameter din1_WIDTH = 64;
parameter dout_WIDTH = 64;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;

assign dout = $signed(din0) * $signed(din1);
endmodule
