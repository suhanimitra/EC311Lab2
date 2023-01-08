`timescale 1ns / 1ps


//Verilog Display Control
module display_control(clk, resetn, display_select, digit_select, digit_value);
    input clk, resetn;
    input [15:0] display_select;
    output [3:0] digit_value;
    output [3:0] digit_select;
    
    wire [1:0] m_select;
    reg [15:0] AN = 16'b0111101111011110;
    //reg [16:0] AN = 16'b1110110110110111;
    
    counter_2bit count2bit(.clk(clk), .resetn(resetn), .count(m_select));
    mux_4to1 m0(.in(AN), .resetn(resetn), .select(m_select), .out(digit_select));
    mux_4to1 m1(.in(display_select), .resetn(resetn), .select(m_select), .out(digit_value));
    

endmodule