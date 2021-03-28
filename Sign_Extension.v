`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:25 01/30/2021 
// Design Name: 
// Module Name:    Sign_Extension 
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
module Sign_Extension(
	bits16_in,
	bits32_out
    );

input [15:0] bits16_in;
output wire [31:0] bits32_out;

assign bits32_out = {{16{bits16_in[15]}} , bits16_in[15:0]};

endmodule
