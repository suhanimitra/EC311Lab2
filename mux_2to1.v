`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:48:19 PM
// Design Name: 
// Module Name: mux_2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//Verilog 2:1 Multiplexer
module mux_2to1(i1_i, i0_i, s_i, y_o);
	input i1_i, i0_i;
    input s_i;
	output y_o;

	assign y_o = (s_i == 1'b0)? i1_i:
		   i0_i;

endmodule