`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:33:52 PM
// Design Name: 
// Module Name: counter_2bit
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

//Verilog 2-bit Counter
module counter_2bit(clk, resetn, count);
    input clk, resetn;
    output reg [1:0] count;
    
    initial begin
        count = 2'b00;
    end
    
    always @ (posedge clk /*or negedge resetn*/) begin
       count <= count + 1'b1;
    end
    
endmodule
