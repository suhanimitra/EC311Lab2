`timescale 1ns / 1ps


module seven_segment_decoder_tb();
    
    reg [3:0] num;
    wire [6:0] value;

    seven_segment_decoder ssd0(.num(num), .seven(value));
    
    initial begin
        disp_select = 0;
    end
    
    always begin
        #7 disp_select <= disp_select + 1'b1;
    end
    
endmodule