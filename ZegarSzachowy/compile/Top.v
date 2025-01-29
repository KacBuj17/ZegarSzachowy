//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : ZegarSzachowy
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\Kacper\Desktop\ProjektyStudia_Sem5\ProjektPSC\ZegarSzachowy\compile\Top.v
// Generated   : Wed Jan 29 04:36:47 2025
// From        : C:\Users\Kacper\Desktop\ProjektyStudia_Sem5\ProjektPSC\ZegarSzachowy\src\Top.bde
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

module Top (CLK,CLR,SELECT,CE,STOP,Set_Impulse,D1,D2,D3,D4,
D5,D6,D7,D8,seg_out,seg_select) ;

// ------------ Port declarations --------- //
input CLK;
wire CLK;
input CLR;
wire CLR;
input SELECT;
wire SELECT;
input CE;
wire CE;
input STOP;
wire STOP;
input Set_Impulse;
wire Set_Impulse;
input D1;
wire D1;
input D2;
wire D2;
input D3;
wire D3;
input D4;
wire D4;
input D5;
wire D5;
input D6;
wire D6;
input D7;
wire D7;
input D8;
wire D8;
output [6:0] seg_out;
wire [6:0] seg_out;
output [7:0] seg_select;
wire [7:0] seg_select;

// ----------- Signal declarations -------- //
wire CEO;
wire ENABLE1;
wire ENABLE2;
wire END;
wire NET7768;
wire NET7772;
wire NET7776;
wire NET7780;
wire NET7784;
wire NET7792;
wire NET7800;
wire NET7808;
wire OVERFLOW1;
wire OVERFLOW2;
wire [6:0] BUS1178;
wire [6:0] BUS1184;
wire [6:0] BUS1190;
wire [6:0] BUS1196;
wire [3:0] BUS14398;
wire [3:0] BUS14402;
wire [3:0] BUS14424;
wire [3:0] BUS14432;
wire [3:0] BUS14440;
wire [3:0] BUS14448;
wire [3:0] BUS14456;
wire [3:0] BUS14460;
wire [6:0] BUS9125;
wire [6:0] BUS9133;
wire [6:0] BUS9141;
wire [6:0] BUS9149;

// -------- Component instantiations -------//

// synthesis translate_off
`library("U10","zegarszachowy")
// synthesis translate_on
Decoder U10
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.digit0(BUS14424),
	.digit1(BUS14432),
	.digit2(BUS14402),
	.digit3(BUS14398),
	.seg0(BUS1178),
	.seg1(BUS1184),
	.seg2(BUS1190),
	.seg3(BUS1196)
);



// synthesis translate_off
`library("U11","zegarszachowy")
// synthesis translate_on
Decoder U11
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.digit0(BUS14448),
	.digit1(BUS14440),
	.digit2(BUS14460),
	.digit3(BUS14456),
	.seg0(BUS9125),
	.seg1(BUS9133),
	.seg2(BUS9141),
	.seg3(BUS9149)
);



// synthesis translate_off
`library("U12","zegarszachowy")
// synthesis translate_on
Seven_seg_driver U12
(
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.seg1(BUS1178),
	.seg2(BUS1184),
	.seg3(BUS1190),
	.seg4(BUS1196),
	.seg5(BUS9125),
	.seg6(BUS9133),
	.seg7(BUS9141),
	.seg8(BUS9149),
	.seg_out(seg_out),
	.seg_select(seg_select)
);



// synthesis translate_off
`library("U16","zegarszachowy")
// synthesis translate_on
Timer_Setter U16
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.D4(D4),
	.D5(D5),
	.D6(D6),
	.D7(D7),
	.D8(D8),
	.IMPULSE(Set_Impulse),
	.STOP(STOP),
	.O_D1(NET7768),
	.O_D2(NET7772),
	.O_D3(NET7776),
	.O_D4(NET7780),
	.O_D5(NET7784),
	.O_D6(NET7792),
	.O_D7(NET7800),
	.O_D8(NET7808)
);



// synthesis translate_off
`library("U17","zegarszachowy")
// synthesis translate_on
Overflow_Handler U17
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.OVERFLOW1(OVERFLOW1),
	.OVERFLOW2(OVERFLOW2),
	.END(END)
);



// synthesis translate_off
`library("U18","zegarszachowy")
// synthesis translate_on
Prescaler U18
(
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.CEO(CEO)
);



// synthesis translate_off
`library("U19","zegarszachowy")
// synthesis translate_on
Switch U19
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CE),
	.SELECT(SELECT),
	.STOP(STOP),
	.END(END),
	.Enable_p1(ENABLE1),
	.Enable_p2(ENABLE2)
);



// synthesis translate_off
`library("U4","zegarszachowy")
// synthesis translate_on
Timer_Clock U4
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CEO),
	.IMPULSE(ENABLE2),
	.US_DECREMENT_IMPULSE(NET7784),
	.TS_DECREMENT_IMPULSE(NET7792),
	.UM_DECREMENT_IMPULSE(NET7800),
	.TM_DECREMENT_IMPULSE(NET7808),
	.sec_tens(BUS14440),
	.sec_units(BUS14448),
	.min_tens(BUS14456),
	.min_units(BUS14460),
	.OVERFLOW(OVERFLOW2)
);



// synthesis translate_off
`library("U9","zegarszachowy")
// synthesis translate_on
Timer_Clock U9
(
	.CLK(CLK),
	.CLR(CLR),
	.CE(CEO),
	.IMPULSE(ENABLE1),
	.US_DECREMENT_IMPULSE(NET7768),
	.TS_DECREMENT_IMPULSE(NET7772),
	.UM_DECREMENT_IMPULSE(NET7776),
	.TM_DECREMENT_IMPULSE(NET7780),
	.sec_tens(BUS14432),
	.sec_units(BUS14424),
	.min_tens(BUS14398),
	.min_units(BUS14402),
	.OVERFLOW(OVERFLOW1)
);



endmodule 
