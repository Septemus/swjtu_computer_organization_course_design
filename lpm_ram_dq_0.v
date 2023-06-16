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
// CREATED		"Thu Jun 08 23:51:47 2023"


module lpm_ram_dq_0(inclock,we,address,data,q);
input inclock;
input we;
input [5:0] address;
input [7:0] data;
output [7:0] q;

lpm_ram_dq	lpm_instance(.inclock(inclock),.we(we),.address(address),.data(data),.q(q));
	defparam	lpm_instance.LPM_ADDRESS_CONTROL = "REGISTERED";
	defparam	lpm_instance.LPM_FILE = "Mif2.mif";
	defparam	lpm_instance.LPM_INDATA = "REGISTERED";
	defparam	lpm_instance.LPM_NUMWORDS = 48;
	defparam	lpm_instance.LPM_OUTDATA = "UNREGISTERED";
	defparam	lpm_instance.LPM_WIDTH = 8;
	defparam	lpm_instance.LPM_WIDTHAD = 6;

endmodule
