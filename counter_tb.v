`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 10/20/2022 04:17:37 PM
// Design Name: 
// Module Name: counter_tb
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

//Verilog Counter Testbench
module counter_tb;

    reg clk, resetn, inc;
    wire [7:0] count;

    counter C0(clk, resetn, inc, count);
    
    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        inc = 1'b0;
        #10 resetn =  1'b1;
    end
    
    always #1 clk = ~clk;
    always #25 inc = ~inc;

endmodule
