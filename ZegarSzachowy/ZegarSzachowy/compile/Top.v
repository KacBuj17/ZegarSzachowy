//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : ZegarSzachowy
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\Kacper\Desktop\ProjektPSC\ZegarSzachowy\ZegarSzachowy\compile\Top.v
// Generated   : Thu Dec 12 23:35:34 2024
// From        : C:\Users\Kacper\Desktop\ProjektPSC\ZegarSzachowy\ZegarSzachowy\src\Top.bde
// By          : Bde2Verilog ver. 2.01
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`ifdef _VCP
`else
`define library(a,b)
`endif


// ---------- Design Unit Header ---------- //
`timescale 1ps / 1ps

module Top (seg0_0,seg0_1,seg0_2,seg0_3,seg1_0,seg1_1,seg1_2,seg1_3,CLK,CLR,
SELECT,STOP,CE,OVERFLOW1,OVERFLOW2) ;

// ------------ Port declarations --------- //
output [6:0] seg0_0;
wire [6:0] seg0_0;
output [6:0] seg0_1;
wire [6:0] seg0_1;
output [6:0] seg0_2;
wire [6:0] seg0_2;
output [6:0] seg0_3;
wire [6:0] seg0_3;
output [6:0] seg1_0;
wire [6:0] seg1_0;
output [6:0] seg1_1;
wire [6:0] seg1_1;
output [6:0] seg1_2;
wire [6:0] seg1_2;
output [6:0] seg1_3;
wire [6:0] seg1_3;
input CLK;
wire CLK;
input CLR;
wire CLR;
input SELECT;
wire SELECT;
input STOP;
wire STOP;
input CE;
wire CE;
output OVERFLOW1;
wire OVERFLOW1;
output OVERFLOW2;
wire OVERFLOW2;

// ----------- Signal declarations -------- //
wire CEO;
wire CEO2;
wire NET5204;
wire NET5212;
wire [3:0] BUS4096;
wire [3:0] BUS4100;
wire [3:0] BUS4110;
wire [3:0] BUS4114;
wire [3:0] BUS4118;
wire [3:0] BUS4122;
wire [3:0] BUS4126;
wire [3:0] BUS4130;

// -------- Component instantiations -------//

Switch U1
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.SELECT(SELECT),
	.STOP(STOP),
	.Enable_p1(NET5204),
	.Enable_p2(NET5212)
);



Timer_Clock U2
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CEO2),
	.IMPULSE(NET5204),
	.sec_tens(BUS4130),
	.sec_units(BUS4126),
	.min_tens(BUS4122),
	.min_units(BUS4118),
	.OVERFLOW(OVERFLOW1)
);



Timer_Clock U3
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CEO),
	.IMPULSE(NET5212),
	.sec_tens(BUS4114),
	.sec_units(BUS4110),
	.min_tens(BUS4100),
	.min_units(BUS4096),
	.OVERFLOW(OVERFLOW2)
);



Decoder U4
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.digit0(BUS4130),
	.digit1(BUS4126),
	.digit2(BUS4122),
	.digit3(BUS4118),
	.seg0(seg0_0),
	.seg1(seg0_1),
	.seg2(seg0_2),
	.seg3(seg0_3)
);



Decoder U5
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.digit0(BUS4114),
	.digit1(BUS4110),
	.digit2(BUS4100),
	.digit3(BUS4096),
	.seg0(seg1_0),
	.seg1(seg1_1),
	.seg2(seg1_2),
	.seg3(seg1_3)
);



Prescaler U6
(
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.CEO(CEO2)
);



Prescaler U8
(
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.CEO(CEO)
);



endmodule 
