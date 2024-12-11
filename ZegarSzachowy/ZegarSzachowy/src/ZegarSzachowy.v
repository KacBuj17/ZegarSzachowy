//-----------------------------------------------------------------------------
//
// Title       : ZegarSzachowy
// Design      : ZegarSzachowy
// Author      : admin
// Company     : AGH
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\student\Desktop\PSC\ZegarSzachowy\src\ZegarSzachowy.v
// Generated   : Wed Dec 11 11:38:47 2024
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
//{module {ZegarSzachowy}}
module ZegarSzachowy (CLK, CLR, CE, PLAYER, STOP, SWITCH_TIM, TIM1, TIM2);
	
	input CLK;
	wire CLK;
	
	input CLR;
	wire CLR;  
	
	input CE;
	wire CE;
	
	input PLAYER;
	wire PLAYER;
	
	input STOP;
	wire STOP; 
	
	input SWITCH_TIM;
	wire SWITCH_TIM;
	
	output [3:0] TIM1;
	wire [3:0] TIM1;
	
	output [3:0] TIM2;
	wire [3:0] TIM2;
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- //
	reg [3:0] Init_Tim;
	
	reg [3:0] TIM1_SEL;
	reg [3:0] TIM2_SEL;
	
	always @ (posedge CLK or posedge CLR) // async reset
		if (CLR) begin
			TIM1_SEL = Init_Tim;
			TIM2_SEL = Init_Tim;
		end
		else 	
			if (CE)
				if (STOP)
					TIM2_SEL = 4'b0;
				else
					if (PLAYER)
						TIM1_SEL = TIM1_SEL - 1;
					else
						TIM2_SEL = TIM2_SEL - 1;
	
	
	always @ (SWITCH_TIM or CLR)
		if (CLR)
			Init_Tim = 4'b0;
		else if(SWITCH_TIM)
			Init_Tim = Init_Tim + 4'b0001;
	
	
	assign TIM1 = TIM1_SEL;
	assign TIM2 = TIM2_SEL;
	
endmodule
