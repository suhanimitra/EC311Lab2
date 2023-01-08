`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 09/29/2022 05:03:41 PM
// Design Name: 
// Module Name: debouncer
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

//Verilog Debouncer
module debouncer(clk, resetn, button_in, button_out);
    input clk, resetn, button_in;
    output reg button_out;

    parameter MAX = 20'b11111111111111111111;
    reg [19:0] deb_count;
    reg output_exist;
    
    always @(posedge clk) begin
        if (!resetn) begin
            deb_count <= 0;
            button_out <= 0;
            output_exist <= 0;
        end else if (!button_in) begin
            deb_count <= 0;
            output_exist <= 0;
        end else if (output_exist) begin
            button_out <= 0;
        end else begin 
            deb_count <= deb_count + 1;
            
            if (deb_count == MAX) begin
                deb_count <= 0;
                button_out <= 1;
                output_exist <= 1;
            end
        end
    end //always

endmodule
