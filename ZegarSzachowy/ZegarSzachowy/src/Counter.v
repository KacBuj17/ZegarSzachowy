`timescale 1ns / 1ps



module Counter (
	input wire CLK,
	input wire CLR,
	input wire CE,
	input wire IMPULSE,
	input wire DECREMENT_IMPULSE,
	input wire [3:0] MAX,
	output reg [3:0] COUNT,
	output wire OVERFLOW	
	
);

always @(posedge CLK or posedge CLR)
    if (CLR)
        COUNT <= MAX;
    else if (CE)
		if (IMPULSE)
	        if (COUNT == 0)
	            COUNT <= MAX;
	        else
	            COUNT <= COUNT - 1;
				
always @(posedge CLK)
	if (DECREMENT_IMPULSE)
        if (COUNT == 0)
            COUNT <= MAX;
        else
            COUNT <= COUNT - 1;
						
assign OVERFLOW = (COUNT == 0) && IMPULSE;

endmodule
