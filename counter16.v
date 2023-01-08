`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2022 03:54:52 PM
// Design Name: 
// Module Name: counter16
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

//Verilog 16-bit Counter
module counter16(resetn, inc, count);
    input resetn, inc;
    output reg [15:0] count;
    
    always @ (posedge inc or negedge resetn) begin
        if (!resetn)
            count <= 16'b0000000000000000;
        else if (inc)
            count <= count + 1'b1;
    end //always
    
endmodule
