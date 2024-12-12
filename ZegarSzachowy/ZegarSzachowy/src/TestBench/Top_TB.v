`timescale 1ns / 1ps


module Top_TB();

    reg CLK;
    reg CLR;
    reg CE;
    reg SELECT;
    reg STOP;
	
	wire OVERFLOW1;
	wire OVERFLOW2;	
	
	
	wire [6:0] seg0_0;
    wire [6:0] seg0_1;
    wire [6:0] seg0_2;
    wire [6:0] seg0_3; 
	
	wire [6:0] seg1_0;
    wire [6:0] seg1_1;
    wire [6:0] seg1_2;
    wire [6:0] seg1_3;

    Top uut (
        .CLK(CLK),
        .CLR(CLR),
        .CE(CE),
        .SELECT(SELECT),
        .STOP(STOP),
		.OVERFLOW1(OVERFLOW1),
		.OVERFLOW2(OVERFLOW2),
		.seg0_0(seg0_0),
        .seg0_1(seg0_1),
        .seg0_2(seg0_2),
        .seg0_3(seg0_3),
		.seg1_0(seg1_0),
        .seg1_1(seg1_1),
        .seg1_2(seg1_2),
        .seg1_3(seg1_3)
    );

    initial CLK = 0;
    always #10 CLK = ~CLK;

    initial begin
        STOP = 0; CLR = 1; CE = 0; SELECT = 0;
		
		#50 CLR = 0; CE = 1; SELECT = 1;
		#100 SELECT = 0;
		#200 SELECT = 1;
		#100 SELECT = 0;
		#300 SELECT = 1;
		#50 SELECT = 0;
		#150 SELECT = 1; STOP = 1;
		#100 STOP = 0;
    end
endmodule