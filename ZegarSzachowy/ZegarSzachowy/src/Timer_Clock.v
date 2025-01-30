`timescale 1ps / 1ps


module Timer_Clock (
	input wire CLK,
	input wire CLR,
	input wire CE,
	input wire IMPULSE,
	input wire US_DECREMENT_IMPULSE,
	input wire TS_DECREMENT_IMPULSE,
	input wire UM_DECREMENT_IMPULSE,
	input wire TM_DECREMENT_IMPULSE,
	output wire [3:0] sec_tens,
	output wire [3:0] sec_units,
	output wire [3:0] min_tens,
	output wire [3:0] min_units,
	output wire OVERFLOW
	);
	
	wire seconds_overflow;
	
	Second_counter sec (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.IMPULSE(IMPULSE),
		.US_DECREMENT_IMPULSE(US_DECREMENT_IMPULSE),
		.TS_DECREMENT_IMPULSE(TS_DECREMENT_IMPULSE),
		.TENS(sec_tens),
		.UNITS(sec_units),
		.OVERFLOW(seconds_overflow)
		);
	
	Minute_counter min (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.IMPULSE(seconds_overflow),
		.UM_DECREMENT_IMPULSE(UM_DECREMENT_IMPULSE),
		.TM_DECREMENT_IMPULSE(TM_DECREMENT_IMPULSE),
		.TENS(min_tens),
		.UNITS(min_units),
		.OVERFLOW(OVERFLOW)
		);
endmodule
