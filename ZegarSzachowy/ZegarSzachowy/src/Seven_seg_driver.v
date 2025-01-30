//-----------------------------------------------------------------------------
//
// Title       : \\7seg_driver
// Design      : ZegarSzachowy
// Author      : admin
// Company     : AGH
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\student\Desktop\ZegarSzachowy-main\ZegarSzachowy\ZegarSzachowy\src\7seg_driver.v
// Generated   : Wed Dec 18 11:22:30 2024
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module Seven_seg_driver (
	input wire CLK,
	input wire CE,
	input wire CLR,
	input wire [6:0] seg1,
	input wire [6:0] seg2,
	input wire [6:0] seg3,
	input wire [6:0] seg4,
	input wire [6:0] seg5,
	input wire [6:0] seg6,
	input wire [6:0] seg7,
	input wire [6:0] seg8,
	output reg [6:0] seg_out,
	output reg [7:0] seg_select
	);
	
	
	reg [9:0] counter = 10'b0000000000;
	
	always @(posedge CLK or posedge CLR) begin
			if (CLR) begin
					seg_out <= 7'b1111111;
					seg_select <= 8'b11111110;
					counter <= 10'b0000000000;
				end
			else if (CE) begin
					if (counter == 10'b1111111111)begin
							counter = 10'b0000000000;
							case (seg_select)
								8'b11111110: begin seg_select <= 8'b11111101; seg_out <= seg2; end
								8'b11111101: begin seg_select <= 8'b11111011; seg_out <= seg3; end
								8'b11111011: begin seg_select <= 8'b11110111; seg_out <= seg4; end
								8'b11110111: begin seg_select <= 8'b11101111; seg_out <= seg5; end
								8'b11101111: begin seg_select <= 8'b11011111; seg_out <= seg6; end
								8'b11011111: begin seg_select <= 8'b10111111; seg_out <= seg7; end
								8'b10111111: begin seg_select <= 8'b01111111; seg_out <= seg8; end    
								8'b01111111: begin seg_select <= 8'b11111110; seg_out <= seg1; end
							endcase 
						end
					counter = counter + 1;
				end
		end
endmodule
