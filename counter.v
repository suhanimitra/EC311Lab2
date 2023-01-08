`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 09/29/2022 05:03:41 PM
// Design Name: 
// Module Name: counter
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

//Verilog Counter
module counter(clk, resetn, inc, count);
    input clk, resetn, inc;
    output reg [7:0] count;
    
    always @ (posedge clk or negedge resetn) begin
        if (!resetn)
            count <= 0;
        else if (inc)
            count <= count + 1'b1;
    end //always
    
endmodule