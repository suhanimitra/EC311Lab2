`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 01:12:54 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb();
    reg clk, resetn, button, mode_select;
    wire [3:0] digit_select;
    wire [6:0] seven;

    top2 T0(.clk(clk), .button(button), .mode_select(mode_select), .resetn(resetn), .digit_select(digit_select), .seven(seven));
    
    initial begin
        clk = 0;
        resetn = 0;
        button = 0;
        mode_select = 1;
        #5 resetn = 1;
    end
    
    always #2 clk = ~clk;
    always #125 button = ~button;

endmodule
