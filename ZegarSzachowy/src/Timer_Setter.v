//-----------------------------------------------------------------------------
//
// Title       : Timer_Setter
// Design      : ZegarSzachowy
// Author      : Kbujak
// Company     : Akademia Górniczo Hutnicza im. Stanis³awa Staszica w Krakowie
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/ZegarSzachowy/src/Timer_Setter.v
// Generated   : Mon Dec 16 18:55:31 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {Timer_Setter}}

module Timer_Setter (
	input wire CLK,
	input wire CLR,
	input wire CE,
	input wire D1,
    input wire D2,
	input wire D3,
    input wire D4,
    input wire D5,
	input wire D6,
	input wire D7,
	input wire D8,
	input wire IMPULSE,
	input wire STOP,
    output wire O_D1,
    output wire O_D2,
	output wire O_D3,
	output wire O_D4,
	output wire O_D5,
	output wire O_D6,
	output wire O_D7,
	output wire O_D8
);

//}} End of automatically maintained section

// Enter your statements here //

reg r_D1 = 1'b0;
reg r_D2 = 1'b0;
reg r_D3 = 1'b0;
reg r_D4 = 1'b0;
reg r_D5 = 1'b0;
reg r_D6 = 1'b0;
reg r_D7 = 1'b0;
reg r_D8 = 1'b0;


always @(posedge CLK or posedge CLR) begin 
	if (CLR) begin
		r_D1 = 1'b0;
		r_D2 = 1'b0;
		r_D3 = 1'b0;
		r_D4 = 1'b0;
		r_D5 = 1'b0;
		r_D6 = 1'b0;
		r_D7 = 1'b0;
		r_D8 = 1'b0;
	end
	else begin
		if (CE) begin
			if (STOP) begin
				if (IMPULSE) begin
					r_D1 = D1;
			    r_D2 = D2;
					r_D3 = D3;
					r_D4 = D4;
					r_D5 = D5;
					r_D6 = D6;
					r_D7 = D7;
					r_D8 = D8;
				end
				else begin
					r_D1 = 1'b0;
					r_D2 = 1'b0;
					r_D3 = 1'b0;
					r_D4 = 1'b0;
					r_D5 = 1'b0;
					r_D6 = 1'b0;
					r_D7 = 1'b0;
					r_D8 = 1'b0;
				end
			end
			else begin
				r_D1 = 1'b0;
				r_D2 = 1'b0;
				r_D3 = 1'b0;
				r_D4 = 1'b0;
				r_D5 = 1'b0;
				r_D6 = 1'b0;
				r_D7 = 1'b0;
				r_D8 = 1'b0;
			end
		end
	end
end

assign O_D1 = r_D1;
assign O_D2 = r_D2;
assign O_D3 = r_D3;
assign O_D4 = r_D4;
assign O_D5 = r_D5;
assign O_D6 = r_D6;
assign O_D7 = r_D7;
assign O_D8 = r_D8;

endmodule
