//-----------------------------------------------------------------------------
//
// Title       : Counter_TB
// Design      : ZegarSzachowy
// Author      : Kbujak
// Company     : Akademia Górniczo Hutnicza im. Stanis³awa Staszica w Krakowie
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Kacper/Desktop/ProjektPSC/ZegarSzachowy/ZegarSzachowy/src/Counter_TB.v
// Generated   : Thu Dec 12 12:27:39 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps


module Counter_TB();

    reg CLK;
    reg CLR;
    reg CE;
	reg IMPULSE;
	reg DECREMENT_IMPULSE;
    reg [3:0] MAX;
    wire [3:0] COUNT;
    wire OVERFLOW;

    Counter uut (
        .CLK(CLK),
        .CLR(CLR),
        .CE(CE),
		.IMPULSE(IMPULSE),
		.DECREMENT_IMPULSE(DECREMENT_IMPULSE),
        .MAX(MAX),
        .COUNT(COUNT),
        .OVERFLOW(OVERFLOW)
    );

    initial CLK = 0;
    always #5 CLK = ~CLK;

    initial begin
        CLR = 1; CE = 1; IMPULSE = 0; MAX = 4'd5;
        #10 CLR = 0;

        #10 IMPULSE = 1;
        repeat (7) #10;

        #10 CLR = 1;
        #10 CLR = 0;

        #10 $stop;
    end
endmodule