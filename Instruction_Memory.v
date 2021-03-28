`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:33 01/30/2021 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory(
	instrn_address,
	instrn
    );

input [31:0] instrn_address; //5-bit address holds 32 values 
									 //= 32/4 = 8 instructions of 4-byte width
output wire [31:0] instrn;

reg [7:0] instrn_mem [31:0];
								  																	  
initial begin
$readmemh("instrn_memory.mem", instrn_mem);
end

assign instrn = {instrn_mem[instrn_address+3],instrn_mem[instrn_address+2],
						instrn_mem[instrn_address+1],instrn_mem[instrn_address]};

endmodule
