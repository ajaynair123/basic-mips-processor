`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:55 01/30/2021 
// Design Name: 
// Module Name:    Alu_Top 
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
module Alu_Top(
	opcode,
	func_field,
	A,
	B,
	result,
	zero
    );

input [5:0] opcode;
input [5:0] func_field;
input [31:0] A;
input [31:0] B;
output [31:0] result;
output zero;
wire [2:0] alu_control;

Alu_Controller alu_ctrlr_inst (
.opcode (opcode),
.func_field (func_field),
.alu_control (alu_control)
);

Alu_Core alu_core_inst (
.A (A),
.B (B),
.alu_control (alu_control),
.result (result),
.zero (zero)
);

endmodule
