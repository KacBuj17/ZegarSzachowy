`timescale 1ns / 1ps   


module Overflow_Handler_TB();
	
	reg CLK;
	reg CLR;
	reg CE;
	reg OVERFLOW1;
	reg OVERFLOW2;
	wire END;
	
	Overflow_Handler uut (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.OVERFLOW1(OVERFLOW1),
		.OVERFLOW2(OVERFLOW2),
		.END(END)
		);
	
	
	always begin
			#5 CLK = ~CLK;
		end	
	
	
	initial begin
			CLK = 0;
			CLR = 0;
			CE = 0;
			OVERFLOW1 = 0;
			OVERFLOW2 = 0;
			
			CLR = 1;
			#10 CLR = 0;
			
			CE = 0;
			OVERFLOW1 = 0;
			OVERFLOW2 = 0;
			#20;
			
			CE = 1;
			OVERFLOW1 = 0;
			OVERFLOW2 = 0;
			#20;
			
			CE = 1;
			OVERFLOW1 = 1;
			OVERFLOW2 = 0;
			#20;
			
			CE = 1;
			OVERFLOW1 = 0;
			OVERFLOW2 = 1;
			#20;
			
			CE = 1;
			OVERFLOW1 = 1;
			OVERFLOW2 = 1;
			#20;
			
			CLR = 1;
			#10 CLR = 0;
			
			
			#50
			OVERFLOW1 = 0;
			OVERFLOW2 = 0;
		end
	
endmodule
