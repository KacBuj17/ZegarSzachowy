`timescale 1ps / 1ps

module Switch_TB();
	
	reg CLK;
	reg CLR;
	reg CE;
	reg SELECT;
	reg STOP;
	reg END;
	wire Enable_p1;
	wire Enable_p2;
	
	Switch uut (
		.CLK(CLK),
		.CLR(CLR),
		.CE(CE),
		.SELECT(SELECT),
		.STOP(STOP),
		.END(END),
		.Enable_p1(Enable_p1),
		.Enable_p2(Enable_p2)
		);
	
	initial CLK = 0;
	always #5 CLK = ~CLK;
	
	initial begin
			CLR = 1; CE = 0; SELECT = 0; STOP = 0;
			#10 CLR = 0;
			
			#5 CE = 1; SELECT = 0;
			#10 SELECT = 1;
			#10 STOP = 1;
			#10 STOP = 0; CE = 0;
			
			#10 CLR = 1;
			#10 CLR = 0;               
			
			#10 $stop;               
		end
endmodule