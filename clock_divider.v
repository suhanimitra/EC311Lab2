`timescale 1ns / 1ps



//Verilog Clock Divider
module clock_divider(clk, resetn, divisor, clk_out);
    input clk, resetn;
    input [27:0] divisor;
    output reg clk_out;
    
    reg [27:0] count;

    always @ (posedge clk) begin
        /*if (!resetn) begin
            count <= 0;
            clk_out <= 0;
        end else*/ if (count == divisor) begin
            count <= 0;
            clk_out = ~clk_out;
        end else begin
            count <= count + 1'b1;
        end
        
        /*count <= count + 1'b1;
        if (count >= (divisor-1)) begin
            count <= 28'd0;
            clk_out <= ~clk_out;
        end
        
        clk_out <= (count < divisor/2)? 1'b1: 1'b0;
        */

    end //always
    
endmodule