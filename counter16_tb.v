`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 05:23:38 PM
// Design Name: 
// Module Name: counter16_tb
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


module counter16_tb();
    
    reg clk, resetn, inc;
    wire [15:0] count;
    
    counter16 c0(.clk(clk), .resetn(resetn), .inc(inc), .count(count));
    
    initial begin
        clk = 0;
        resetn = 0;
        inc = 0;
        #7 resetn = 1;
    end
    
    always #0.25 clk = ~clk;
    always #1 inc = ~inc;
    always #600 resetn = ~resetn;
    
endmodule
