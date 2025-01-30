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
	
	always @(posedge CLK or posedge CLR) begin
			if (CLR) begin
					COUNT <= MAX;
			end else if (CE) begin
					if (IMPULSE || DECREMENT_IMPULSE) begin
							if (COUNT == 0) begin
									COUNT <= MAX;
							end else begin
									COUNT <= COUNT - 1;
								end
						end
				end
		end
	
	assign OVERFLOW = (COUNT == 0) && IMPULSE;
	
endmodule
