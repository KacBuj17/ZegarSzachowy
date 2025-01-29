//-----------------------------------------------------------------------------
//
// Title       : Prescaler
// Design      : TutorVerilog_final
// Author      : PJR
// Company     : AGH
//
//-----------------------------------------------------------------------------
//
// File        : D:\My_Office\AGH\Dydaktyka\PSC\AHDL\Verilog\TutorVerilog\TutorVerilog_final\src\Prescaler.v
// Generated   : Sun Dec  1 16:56:08 2024
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps


module Prescaler (CLK, CE, CLR, CEO);
	
wire CLK;
input CLK;
wire CE;
input CE;
wire CLR;
input CLR;
wire CEO;
output CEO;
	

reg [26:0] Divider;           					// internal divider register 
integer DIVIDE_FACTOR = 100_000_000;        	 	// divide factor user constant
												     						// remember to adjust lenght of Divider register when DIVIDE_FACTOR is being changed

	always @(posedge CLK, posedge CLR)
		if (CLR)
			Divider <= 0;
		else
			if (CE)
				if (Divider == DIVIDE_FACTOR-1)
					Divider <= 0;
				else
					Divider <= Divider + 1;

assign CEO = ((Divider == (DIVIDE_FACTOR-1)) & CE) ? 1 : 0;
	
endmodule