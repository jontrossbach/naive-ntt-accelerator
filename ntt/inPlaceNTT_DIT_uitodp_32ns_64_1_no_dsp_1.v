// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.3 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module inPlaceNTT_DIT_uitodp_32ns_64_1_no_dsp_1
#(parameter
    ID         = 17,
    NUM_STAGE  = 1,
    din0_WIDTH = 32,
    dout_WIDTH = 64
)(
    input  wire [din0_WIDTH-1:0] din0,
    output wire [dout_WIDTH-1:0] dout
);
//------------------------Local signal-------------------
wire        a_tvalid;
wire [31:0] a_tdata;
wire        r_tvalid;
wire [63:0] r_tdata;
//------------------------Instantiation------------------
inPlaceNTT_DIT_ap_uitodp_0_no_dsp_32 inPlaceNTT_DIT_ap_uitodp_0_no_dsp_32_u (
    .s_axis_a_tvalid      ( a_tvalid ),
    .s_axis_a_tdata       ( a_tdata ),
    .m_axis_result_tvalid ( r_tvalid ),
    .m_axis_result_tdata  ( r_tdata )
);
//------------------------Body---------------------------
assign a_tvalid = 1'b1;
assign a_tdata  = din0;
assign dout     = r_tdata;

endmodule
