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

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "06/08/2023 23:20:56"
                                                                                
// Verilog Test Bench template for design : computer
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ns/ 1 ns
module computer_vlg_tst();
// constants                                           
// general purpose registers
// test vector input registers
reg clk;
reg reset;
// wires                                               
wire [11:0]  M_addr;
wire [7:0]  M_data_out;
wire [7:0]  M_q;
wire overflow;
wire [7:0]  PC;
wire [7:0]  R0;
wire [7:0]  R1;
wire [7:0]  R2;
wire [7:0]  R3;
wire [2:0]  state;
wire Write_read;

// assign statements (if any)                          
computer i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.M_addr(M_addr),
	.M_data_out(M_data_out),
	.M_q(M_q),
	.overflow(overflow),
	.PC(PC),
	.R0(R0),
	.R1(R1),
	.R2(R2),
	.R3(R3),
	.reset(reset),
	.state(state),
	.Write_read(Write_read)
);
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
                                                       
// --> end                                             
$display("Running testbench");
reset=1'b1;
clk=1'b0;                       
end                                                    
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          
#10 clk=~clk;
                                                       
// --> end                                             
end                                                    
endmodule

