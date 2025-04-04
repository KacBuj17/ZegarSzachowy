`timescale 1ns / 1ps



module Timer_Clock_TB;
	
	reg CLK;
	reg CLR;
	reg CE;
	reg IMPULSE;
	reg US_DECREMENT_IMPULSE;
	reg TS_DECREMENT_IMPULSE;
	reg UM_DECREMENT_IMPULSE;
	reg TM_DECREMENT_IMPULSE;
	wire [3:0] sec_tens;
	wire [3:0] sec_units;
	wire [3:0] min_tens;
	wire [3:0] min_units;
	wire OVERFLOW;
	
	Timer_Clock uut (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.IMPULSE(IMPULSE),
		.US_DECREMENT_IMPULSE(US_DECREMENT_IMPULSE),
		.TS_DECREMENT_IMPULSE(TS_DECREMENT_IMPULSE),
		.UM_DECREMENT_IMPULSE(UM_DECREMENT_IMPULSE),
		.TM_DECREMENT_IMPULSE(TM_DECREMENT_IMPULSE),
		.sec_tens(sec_tens),
		.sec_units(sec_units),
		.min_tens(min_tens),
		.min_units(min_units),
		.OVERFLOW(OVERFLOW)
		);
	
	
	initial begin
			CLK = 0;
			forever #5 CLK = ~CLK;
		end
	
	
	initial begin
			CE = 1; IMPULSE = 1;
			CLR = 1;
			#20;
			CLR = 0;
			#30 IMPULSE = 0;
			#75 IMPULSE = 1;
		end
endmodule