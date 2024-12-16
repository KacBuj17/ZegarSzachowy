`timescale 1ns / 1ps


module Top_TB();

    reg CLK;
    reg CLR;
    reg CE;
    reg SELECT;
	reg Set_Impulse;
    reg STOP;
	
	reg D1;
	reg D2;
	reg D3;
	reg D4;
	reg D5;
	reg D6;
	reg D7;
	reg D8;
	
	
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
		.D1(D1),
		.D2(D2),
		.D3(D3),
		.D4(D4),
		.D5(D5),
		.D6(D6),
		.D7(D7),
		.D8(D8),
		.Set_Impulse(Set_Impulse),
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
        STOP = 0; CLR = 1; CE = 0; SELECT = 0; Set_Impulse = 0;
		D1 = 0; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 0; D7 = 0; D8 = 0;
		
		#50 CLR = 0; CE = 1; SELECT = 1;
		#100 SELECT = 0;
		#200 SELECT = 1;
		#100 SELECT = 0;
		#300 SELECT = 1;
		#50 SELECT = 0;
		#150 SELECT = 1; STOP = 1;
		#100 D1 = 1; Set_Impulse = 1;
		#20 D5 = 1;
		#20 D2 = 1;
		#20 D6 = 1;
		#20 D3 = 1;
		#20 D7 = 1;
		#20 D4 = 1;
		#20 D8 = 1;
		#160 STOP = 0; D1 = 0; Set_Impulse = 0;
    end
endmodule