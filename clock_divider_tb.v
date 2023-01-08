`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 01:11:56 PM
// Design Name: 
// Module Name: clock_divider_tb
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

`timescale 1ns / 1ps

module clock_divider_tb();

    reg clk, resetn;
    wire clk_out;
    
    parameter khz = 28'b0000000000001100001101010000;

    clock_divider clk1(.clk(clk), .resetn(resetn), .divisor(khz), .clk_out(clk_out));
    
    initial begin
        clk = 0;
        resetn = 0;
        #13 resetn = 1;
    end
    
    always #0.0005 clk = ~clk;


endmodule
