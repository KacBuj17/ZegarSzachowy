//-----------------------------------------------------------------------------
//
// Title       : Seven_seg_driver_TB
// Design      : ZegarSzachowy
// Author      : Kbujak
// Company     : Akademia Górniczo Hutnicza im. Stanis³awa Staszica w Krakowie
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Seven_seg_driver_TB.v
// Generated   : Tue Jan  7 14:19:00 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

module Seven_seg_driver_tb;

    // Inputs
    reg CLK;
    reg CE;
    reg CLR;
    reg [6:0] seg1;
    reg [6:0] seg2;
    reg [6:0] seg3;
    reg [6:0] seg4;
    reg [6:0] seg5;
    reg [6:0] seg6;
    reg [6:0] seg7;
    reg [6:0] seg8;

    wire [6:0] seg_out;
    wire [7:0] seg_select;

    Seven_seg_driver uut (
        .CLK(CLK),
        .CE(CE),
        .CLR(CLR),
        .seg1(seg1),
        .seg2(seg2),
        .seg3(seg3),
        .seg4(seg4),
        .seg5(seg5),
        .seg6(seg6),
        .seg7(seg7),
        .seg8(seg8),
        .seg_out(seg_out),
        .seg_select(seg_select)
    );

    initial CLK = 0;
    always #5 CLK = ~CLK;

    initial begin
        CE = 0;
        CLR = 0;
        seg1 = 7'b1111001;
        seg2 = 7'b0100100;
        seg3 = 7'b0110000;
        seg4 = 7'b0011001;
        seg5 = 7'b0010010;
        seg6 = 7'b0000010;
        seg7 = 7'b1111000;
        seg8 = 7'b0000000;

        CLR = 1;
        #10;
        CLR = 0;

        CE = 1;

        #2000;

        CE = 0;

        #100;
        $stop;
    end

endmodule
