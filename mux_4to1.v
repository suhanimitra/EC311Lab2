`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:45:59 PM
// Design Name: 
// Module Name: mux_4to1
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

//Verilog 4:1 Mux
module mux_4to1(in, resetn, select, out);
    input [15:0] in;
    input resetn;
    input [1:0] select;
    output reg [3:0] out;
    
    always @(*) begin
        if (!resetn) begin
            out <= 4'b0000;        
        end
        case (select)
            /*2'b00: out <= in[15:12];
            2'b01: out <= in[11:8];
            2'b10: out <= in[7:4];
            2'b11: out <= in[3:0];
            */
            2'b00: out <= in[3:0];
            2'b01: out <= in[7:4];
            2'b10: out <= in[11:8];
            2'b11: out <= in[15:12];
            
        endcase
    end //always
       
endmodule