//-----------------------------------------------------------------------------
//
// Title       : Overflow_Handler
// Design      : ZegarSzachowy
// Author      : Kbujak
// Company     : Akademia Górniczo Hutnicza im. Stanis³awa Staszica w Krakowie
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Kacper/Desktop/ProjektPSC/ZegarSzachowy/ZegarSzachowy/src/Overflow_Handler.v
// Generated   : Mon Dec 16 13:15:18 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps  


module Overflow_Handler (
	input wire CLK,
	input wire CLR,
	input wire CE,
	input wire OVERFLOW1,
	input wire OVERFLOW2,
	output wire END
	);
	
	reg En = 1'b0;
	
	always @(posedge CLK or posedge CLR) begin
			if (CLR) begin
					En <= 1'b0;
			end else if (CE) begin
					if (OVERFLOW1 || OVERFLOW2) begin
							En <= 1'b1;
						end
				end
		end
	
	assign END = En;
	
endmodule

