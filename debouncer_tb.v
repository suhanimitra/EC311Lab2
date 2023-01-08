`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 10/27/2022 04:25:19 PM
// Design Name: 
// Module Name: debouncer_tb
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

//Verilog Debouncer Testbench
module debouncer_tb;

    reg clk, resetn, button_in;
    wire button_out;
    
    debouncer D0(clk, resetn, button_in, button_out);
    
    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        button_in = 1'b0;
        #10 resetn = 1'b0;
     end
    
    always #1 clk = ~clk;
    always #100 button_in = ~button_in;
    always #400 resetn = ~resetn;

endmodule
