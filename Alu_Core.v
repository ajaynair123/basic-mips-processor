`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:49 01/30/2021 
// Design Name: 
// Module Name:    Alu_Core 
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

//ALU_Control	Operation
//		0				Add
//		1				Sub
//		2				And
//		3				Or
//		4				Nor
//		5				Less Than

module Alu_Core(
	A,
	B,
	alu_control,
	result,
	zero
    );

input [31:0] A;
input [31:0] B;
input [2:0] alu_control;
output reg [31:0] result;
output wire zero;

assign zero = !(|result);

always @ (*)
begin
	case(alu_control)
	3'h0: result = A + B;
	3'h1: result = A - B;
	3'h2: result = A & B;
	3'h3: result = A | B;
	3'h4: result = ~(A | B);
	3'h5: result = (A < B);
	default: result = A + B;
	endcase
end
endmodule
