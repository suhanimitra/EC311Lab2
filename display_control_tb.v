`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 01:12:33 PM
// Design Name: 
// Module Name: display_control_tb
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

//Verilog Display Control Testbench
module display_control_tb();
    
    reg clk, resetn;
    reg [15:0] disp_select;
    wire [3:0] digit_value, digit_select;
    
    display_control D0(.clk(clk), .resetn(resetn), .display_select(disp_select), .digit_value(digit_value), .digit_select(digit_select));
    
    initial begin
        clk = 0;
        resetn = 1'b0;
        disp_select = 16'b0000111101011001;
        #13 resetn = 1'b1;
     end
    
    always #1 clk = ~clk;
    always #4 disp_select = disp_select + 1'b1;
    
endmodule
