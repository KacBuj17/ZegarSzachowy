`timescale 1ps / 1ps



module Minute_counter (
	input wire CLK,
	input wire CLR, 
	input wire CE,
	input wire IMPULSE,
	input wire UM_DECREMENT_IMPULSE,
	input wire TM_DECREMENT_IMPULSE,
	output wire [3:0] TENS,
	output wire [3:0] UNITS,
	output wire OVERFLOW
	);
	
	wire tens_enable;
	
	Counter unit_min (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.IMPULSE(IMPULSE),
		.DECREMENT_IMPULSE(UM_DECREMENT_IMPULSE),
		.MAX(4'd9),
		.COUNT(UNITS),
		.OVERFLOW(tens_enable));
	
	Counter tens_min (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.IMPULSE(tens_enable),
		.DECREMENT_IMPULSE(TM_DECREMENT_IMPULSE),
		.MAX(4'd5),
		.COUNT(TENS),
		.OVERFLOW(OVERFLOW));
endmodule
