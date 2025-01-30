//-----------------------------------------------------------------------------
//
// Title       : Decoder_TB
// Design      : ZegarSzachowy
// Author      : Kbujak
// Company     : Akademia Górniczo Hutnicza im. Stanis³awa Staszica w Krakowie
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Kacper/Desktop/ProjektPSC/ZegarSzachowy/ZegarSzachowy/src/Decoder_TB.v
// Generated   : Thu Dec 12 12:29:00 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module Decoder_TB();
	
	reg CLK;
	reg CLR;
	reg CE;
	reg [3:0] digit0;
	reg [3:0] digit1;
	reg [3:0] digit2;
	reg [3:0] digit3;
	wire [6:0] seg0;
	wire [6:0] seg1;
	wire [6:0] seg2;
	wire [6:0] seg3;
	
	Decoder uut (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.digit0(digit0),
		.digit1(digit1),
		.digit2(digit2),
		.digit3(digit3),
		.seg0(seg0),
		.seg1(seg1),
		.seg2(seg2),
		.seg3(seg3)
		);
	
	initial CLK = 0;
	always #5 CLK = ~CLK;
	
	initial begin
			CLR = 1; CE = 0;
			digit0 = 4'd0; digit1 = 4'd1; digit2 = 4'd2; digit3 = 4'd3;
			
			#10 CLR = 0;
			
			#5 CE = 1;
			#20 digit0 = 4'd4; digit1 = 4'd5; digit2 = 4'd6; digit3 = 4'd7;
			#20 digit0 = 4'd8; digit1 = 4'd9; digit2 = 4'd0; digit3 = 4'd1;
			
			#10 CLR = 1;
			#10 CLR = 0;
			
			#10 $stop;
		end
endmodule