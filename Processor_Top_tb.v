`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:45:43 02/11/2021
// Design Name:   Processor_Top
// Module Name:   C:/Xilinx/1_RTL/Processor/Processor_Top_tb.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Processor_Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Processor_Top_tb;

// Inputs
reg clk;
reg rst_n;

// Instantiate the Unit Under Test (UUT)
Processor_Top uut (
	.clk(clk), 
	.rst_n(rst_n)
);

always #5 clk = ~clk;

initial begin
	clk = 1'b1;
	rst_n = 1'b0;
	#30
	rst_n = 1'b1;
	#70	
	$finish;
end
      
endmodule

