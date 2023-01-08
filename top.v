`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 09/29/2022 05:03:41 PM
// Design Name: 
// Module Name: top
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

//Verilog Top Module
module top(clk, resetn, inc, count);
    input clk, resetn, inc;
    output [7:0] count;
    
    wire w0;
    
    debouncer D0(.clk(clk),
                 .resetn(resetn),
                 .button_in(inc),
                 .button_out(w0));
                 
    counter C0(.clk(clk),
               .resetn(resetn),
               .inc(w0),
               .count(count));

endmodule