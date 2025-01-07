//-----------------------------------------------------------------------------
//
// Title       : Decoder
// Design      : ZegarSzachowy
// Author      : Kbujak
// Company     : Akademia Górniczo Hutnicza im. Stanis³awa Staszica w Krakowie
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Kacper/Desktop/ProjektPSC/ZegarSzachowy/ZegarSzachowy/src/Decoder.v
// Generated   : Thu Dec 12 11:52:35 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps  
	
module Decoder(
    input wire CLK,
    input wire CLR,
    input wire CE,
    input wire [3:0] digit0,
    input wire [3:0] digit1,
    input wire [3:0] digit2,
    input wire [3:0] digit3,
    output reg [6:0] seg0,
    output reg [6:0] seg1,
    output reg [6:0] seg2,
    output reg [6:0] seg3
);

function [6:0] digit_to_7seg;
    input [3:0] digit;
    case (digit)
        4'd0: digit_to_7seg = 7'b0111111;
        4'd1: digit_to_7seg = 7'b0000110;
        4'd2: digit_to_7seg = 7'b1011011;
        4'd3: digit_to_7seg = 7'b1001111;
        4'd4: digit_to_7seg = 7'b1100110;
        4'd5: digit_to_7seg = 7'b1101101;
        4'd6: digit_to_7seg = 7'b1111101;
        4'd7: digit_to_7seg = 7'b0000111;
        4'd8: digit_to_7seg = 7'b1111111;
        4'd9: digit_to_7seg = 7'b1101111;
        default: digit_to_7seg = 7'b0000000;
    endcase
endfunction


always @(posedge CLK or posedge CLR) begin
    if (CLR) begin
        seg0 = 7'b0000000;
        seg1 = 7'b0000000;
        seg2 = 7'b0000000;
        seg3 = 7'b0000000;
    end else if (CE) begin
        seg0 = digit_to_7seg(digit0);
        seg1 = digit_to_7seg(digit1);
        seg2 = digit_to_7seg(digit2);
        seg3 = digit_to_7seg(digit3);
    end
end
endmodule
