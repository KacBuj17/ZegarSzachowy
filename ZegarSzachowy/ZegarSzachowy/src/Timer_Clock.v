`timescale 1ps / 1ps


module Timer_Clock (
    input wire CLK,
    input wire CLR,
	input wire CE,
	input wire IMPULSE,
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
        .TENS(sec_tens),
        .UNITS(sec_units),
        .OVERFLOW(seconds_overflow)
    );

    Minute_counter min (
        .CLK(CLK),
        .CLR(CLR),
        .CE(CE),
		.IMPULSE(seconds_overflow),
        .TENS(min_tens),
        .UNITS(min_units),
        .OVERFLOW(OVERFLOW)
    );
endmodule
