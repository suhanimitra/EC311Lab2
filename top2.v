`timescale 1ns / 1ps

//Verilog Top Module Lab 2 Part 2
module top2(clk, button, mode_select, resetn, digit_select, seven);
    input clk, button, resetn, mode_select;
    output [3:0] digit_select;
    output [6:0] seven;
    
    wire khzclk, hzclk, deb_out, count0_in;
    //reg [27:0] khzclk, hzclk;
    wire [3:0] binary_out;
    wire [15:0] count0_out;
  
    //reg [27:0] khz = 28'hC350;
    //reg [27:0] hz = 28'h2FAF080;
    reg [27:0] khz = 28'd2;
    reg [27:0] hz = 28'd10;
   
    clock_divider c0(.clk(clk), .resetn(resetn), .divisor(khz), .clk_out(khzclk));
    clock_divider c1(.clk(clk), .resetn(resetn), .divisor(hz), .clk_out(hzclk));
  
    debouncer d0(.clk(clk), .resetn(resetn), .button_in(button), .button_out(deb_out));   
    mux_2to1 m0(.i1_i(hzclk), .i0_i(deb_out), .s_i(mode_select), .y_o(count0_in));   
    counter16 count0(.resetn(resetn), .inc(count0_in), .count(count0_out));
    display_control disp0(.clk(khzclk), .resetn(resetn), .display_select(count0_out), .digit_select(digit_select), .digit_value(binary_out));
    seven_segment_decoder s0(.num(binary_out), .seven(seven));
    
endmodule
