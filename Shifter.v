`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:41 01/30/2021 
// Design Name: 
// Module Name:    Shifter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Shifter(
	indata,
	shift_amt,
	shift_left,
	outdata
    );

input [31:0] indata;
input [1:0] shift_amt;
input shift_left;
output wire [31:0] outdata;

assign outdata = shift_left ? indata<<shift_amt : indata>>shift_amt;

endmodule
