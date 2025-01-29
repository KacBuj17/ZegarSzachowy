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

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {\\7seg_driver}}
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
	
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- //
	
	reg [3:0] counter1 = 4'b0;
	reg [2:0] counter2 = 3'b0;
	
	always @(posedge CLK or posedge CLR) begin
			if (CLR) begin
			    seg_out <= 7'b0;
			    seg_select <= 8'b0;
			    counter1 <= 4'b0;
			    counter2 <= 3'b0;
			end
			else if (CE) begin
					if (counter1 == 4'b1111) begin
							counter1 <= 4'b0;
							case (counter2)
								4'd0: begin seg_out <= seg1; seg_select <= 8'b00000001; end
								4'd1: begin seg_out <= seg2; seg_select <= 8'b00000010; end
								4'd2: begin seg_out <= seg3; seg_select <= 8'b00000100; end
								4'd3: begin seg_out <= seg4; seg_select <= 8'b00001000; end
								4'd4: begin seg_out <= seg5; seg_select <= 8'b00010000; end
								4'd5: begin seg_out <= seg6; seg_select <= 8'b00100000; end
								4'd6: begin seg_out <= seg7; seg_select <= 8'b01000000; end
								4'd7: begin seg_out <= seg8; seg_select <= 8'b10000000; end
								default: begin seg_out <= 7'b0000000; seg_select <= 8'b00000000; counter2 <= 3'b0; end
							endcase
							counter2 <= counter2 + 1;
						end
					counter1 <= counter1 + 1;
				end
		end
	
endmodule
