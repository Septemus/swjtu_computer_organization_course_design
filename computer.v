// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Fri Jun 09 00:49:29 2023"

module computer(
	reset,
	clk,
	Write_read,
	overflow,
	M_addr,
	M_data_out,
	M_q,
	PC,
	R0,
	R1,
	R2,
	R3,
	state
);


input wire	reset;
input wire	clk;
output wire	Write_read;
output wire	overflow;
output wire	[11:0] M_addr;
output wire	[7:0] M_data_out;
output wire	[7:0] M_q;
output wire	[7:0] PC;
output wire	[7:0] R0;
output wire	[7:0] R1;
output wire	[7:0] R2;
output wire	[7:0] R3;
output wire	[2:0] state;

wire	[11:0] M_addr_ALTERA_SYNTHESIZED;
wire	[7:0] M_data_in;
wire	[7:0] M_data_out_ALTERA_SYNTHESIZED;
wire	we;





cpu	b2v_inst2(
	.clk(clk),
	.reset(reset),
	.M_data_in(M_data_in),
	.Write_read(we),
	.overflow(overflow),
	.M_addr(M_addr_ALTERA_SYNTHESIZED),
	.M_data_out(M_data_out_ALTERA_SYNTHESIZED),
	.PC(PC),
	.R0(R0),
	.R1(R1),
	.R2(R2),
	.R3(R3),
	.state(state));
	defparam	b2v_inst2.Add = 4'b0011;
	defparam	b2v_inst2.And = 4'b0101;
	defparam	b2v_inst2.Idle = 4'b0000;
	defparam	b2v_inst2.Jmp = 4'b1011;
	defparam	b2v_inst2.Jz = 4'b1100;
	defparam	b2v_inst2.Load = 4'b0001;
	defparam	b2v_inst2.Move = 4'b0010;
	defparam	b2v_inst2.Or = 4'b0110;
	defparam	b2v_inst2.Read = 4'b1101;
	defparam	b2v_inst2.Shl = 4'b1001;
	defparam	b2v_inst2.Shr = 4'b1000;
	defparam	b2v_inst2.st_0 = 3'b000;
	defparam	b2v_inst2.st_1 = 3'b001;
	defparam	b2v_inst2.st_2 = 3'b010;
	defparam	b2v_inst2.st_3 = 3'b011;
	defparam	b2v_inst2.st_4 = 3'b100;
	defparam	b2v_inst2.Stop = 4'b1111;
	defparam	b2v_inst2.Sub = 4'b0100;
	defparam	b2v_inst2.Swap = 4'b1010;
	defparam	b2v_inst2.Write = 4'b1110;
	defparam	b2v_inst2.Xor = 4'b0111;


mif2	b2v_inst3(
	.clock(clk),
	.wren(we),
	.address(M_addr_ALTERA_SYNTHESIZED[5:0]),
	.data(M_data_out_ALTERA_SYNTHESIZED),
	.q(M_data_in));

assign	Write_read = we;
assign	M_addr = M_addr_ALTERA_SYNTHESIZED;
assign	M_data_out = M_data_out_ALTERA_SYNTHESIZED;
assign	M_q = M_data_in;

endmodule
