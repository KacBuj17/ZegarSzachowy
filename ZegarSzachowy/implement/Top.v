// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan 27 09:33:43 2025
// Host        : DESKTOP-UDGHVC5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Counter
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[2]_0 ,
    D);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input \COUNT_reg[0]_0 ;
  output \COUNT_reg[2]_0 ;
  output [6:0]D;

  wire [2:0]BUS4114;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__4_n_0 ;
  wire \COUNT[1]_i_1__3_n_0 ;
  wire \COUNT[2]_i_2__0_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[2]_0 ;
  wire [6:0]D;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__4 
       (.I0(BUS4114[0]),
        .O(\COUNT[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hC2)) 
    \COUNT[1]_i_1__3 
       (.I0(BUS4114[2]),
        .I1(BUS4114[1]),
        .I2(BUS4114[0]),
        .O(\COUNT[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \COUNT[2]_i_2__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[0]),
        .I2(BUS4114[1]),
        .O(\COUNT[2]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[3]_i_4__1 
       (.I0(BUS4114[2]),
        .I1(BUS4114[1]),
        .I2(BUS4114[0]),
        .O(\COUNT_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(\COUNT[0]_i_1__4_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4114[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__3_n_0 ),
        .Q(BUS4114[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(\COUNT[2]_i_2__0_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4114[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \seg0[0]_i_1__0 
       (.I0(BUS4114[0]),
        .I1(BUS4114[2]),
        .I2(BUS4114[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \seg0[1]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[1]),
        .I2(BUS4114[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \seg0[2]_i_1__0 
       (.I0(BUS4114[1]),
        .I1(BUS4114[2]),
        .I2(BUS4114[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h6B)) 
    \seg0[3]_i_1__0 
       (.I0(BUS4114[1]),
        .I1(BUS4114[0]),
        .I2(BUS4114[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \seg0[4]_i_1__0 
       (.I0(BUS4114[0]),
        .I1(BUS4114[1]),
        .I2(BUS4114[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \seg0[5]_i_1__0 
       (.I0(BUS4114[1]),
        .I1(BUS4114[0]),
        .I2(BUS4114[2]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h6E)) 
    \seg0[6]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[1]),
        .I2(BUS4114[0]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_10
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[2]_0 );
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  output \COUNT_reg[3]_0 ;
  output [6:0]\COUNT_reg[2]_0 ;

  wire [3:0]BUS4118;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__0_n_0 ;
  wire \COUNT[1]_i_1__1_n_0 ;
  wire \COUNT[2]_i_1__2_n_0 ;
  wire \COUNT[3]_i_2__0_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__0 
       (.I0(BUS4118[0]),
        .O(\COUNT[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__1 
       (.I0(BUS4118[3]),
        .I1(BUS4118[2]),
        .I2(BUS4118[1]),
        .I3(BUS4118[0]),
        .O(\COUNT[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hCCC2)) 
    \COUNT[2]_i_1__2 
       (.I0(BUS4118[3]),
        .I1(BUS4118[2]),
        .I2(BUS4118[0]),
        .I3(BUS4118[1]),
        .O(\COUNT[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2__0 
       (.I0(BUS4118[3]),
        .I1(BUS4118[2]),
        .I2(BUS4118[1]),
        .I3(BUS4118[0]),
        .O(\COUNT[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \COUNT[3]_i_3__0 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[0]_1 ),
        .I2(BUS4118[3]),
        .I3(BUS4118[2]),
        .I4(BUS4118[1]),
        .I5(BUS4118[0]),
        .O(\COUNT_reg[3]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[0]_i_1__0_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4118[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__1_n_0 ),
        .Q(BUS4118[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[2]_i_1__2_n_0 ),
        .Q(BUS4118[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[3]_i_2__0_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4118[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0F39)) 
    \seg3[0]_i_1 
       (.I0(BUS4118[0]),
        .I1(BUS4118[2]),
        .I2(BUS4118[3]),
        .I3(BUS4118[1]),
        .O(\COUNT_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3157)) 
    \seg3[1]_i_1 
       (.I0(BUS4118[2]),
        .I1(BUS4118[3]),
        .I2(BUS4118[0]),
        .I3(BUS4118[1]),
        .O(\COUNT_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1F1D)) 
    \seg3[2]_i_1 
       (.I0(BUS4118[1]),
        .I1(BUS4118[2]),
        .I2(BUS4118[3]),
        .I3(BUS4118[0]),
        .O(\COUNT_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h056B)) 
    \seg3[3]_i_1 
       (.I0(BUS4118[1]),
        .I1(BUS4118[0]),
        .I2(BUS4118[2]),
        .I3(BUS4118[3]),
        .O(\COUNT_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1013)) 
    \seg3[4]_i_1 
       (.I0(BUS4118[3]),
        .I1(BUS4118[0]),
        .I2(BUS4118[1]),
        .I3(BUS4118[2]),
        .O(\COUNT_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0571)) 
    \seg3[5]_i_1 
       (.I0(BUS4118[1]),
        .I1(BUS4118[0]),
        .I2(BUS4118[2]),
        .I3(BUS4118[3]),
        .O(\COUNT_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h116E)) 
    \seg3[6]_i_1 
       (.I0(BUS4118[2]),
        .I1(BUS4118[1]),
        .I2(BUS4118[0]),
        .I3(BUS4118[3]),
        .O(\COUNT_reg[2]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_2
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[2]_0 );
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  output \COUNT_reg[3]_0 ;
  output [6:0]\COUNT_reg[2]_0 ;

  wire [3:0]BUS4110;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__1_n_0 ;
  wire \COUNT[1]_i_1__2_n_0 ;
  wire \COUNT[2]_i_1__3_n_0 ;
  wire \COUNT[3]_i_2__1_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__1 
       (.I0(BUS4110[0]),
        .O(\COUNT[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__2 
       (.I0(BUS4110[3]),
        .I1(BUS4110[2]),
        .I2(BUS4110[1]),
        .I3(BUS4110[0]),
        .O(\COUNT[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hCCC2)) 
    \COUNT[2]_i_1__3 
       (.I0(BUS4110[3]),
        .I1(BUS4110[2]),
        .I2(BUS4110[0]),
        .I3(BUS4110[1]),
        .O(\COUNT[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT[2]_i_3__0 
       (.I0(BUS4110[0]),
        .I1(BUS4110[1]),
        .I2(BUS4110[2]),
        .I3(BUS4110[3]),
        .O(\COUNT_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2__1 
       (.I0(BUS4110[3]),
        .I1(BUS4110[2]),
        .I2(BUS4110[1]),
        .I3(BUS4110[0]),
        .O(\COUNT[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \COUNT[3]_i_3__3 
       (.I0(\COUNT_reg[0]_1 ),
        .I1(BUS4110[3]),
        .I2(BUS4110[2]),
        .I3(BUS4110[1]),
        .I4(BUS4110[0]),
        .O(\COUNT_reg[3]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[0]_i_1__1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4110[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__2_n_0 ),
        .Q(BUS4110[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[2]_i_1__3_n_0 ),
        .Q(BUS4110[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[3]_i_2__1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4110[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0F39)) 
    \seg1[0]_i_1__0 
       (.I0(BUS4110[0]),
        .I1(BUS4110[2]),
        .I2(BUS4110[3]),
        .I3(BUS4110[1]),
        .O(\COUNT_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'h3157)) 
    \seg1[1]_i_1__0 
       (.I0(BUS4110[2]),
        .I1(BUS4110[3]),
        .I2(BUS4110[0]),
        .I3(BUS4110[1]),
        .O(\COUNT_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1F1D)) 
    \seg1[2]_i_1__0 
       (.I0(BUS4110[1]),
        .I1(BUS4110[2]),
        .I2(BUS4110[3]),
        .I3(BUS4110[0]),
        .O(\COUNT_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h056B)) 
    \seg1[3]_i_1__0 
       (.I0(BUS4110[1]),
        .I1(BUS4110[0]),
        .I2(BUS4110[2]),
        .I3(BUS4110[3]),
        .O(\COUNT_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h1013)) 
    \seg1[4]_i_1__0 
       (.I0(BUS4110[3]),
        .I1(BUS4110[0]),
        .I2(BUS4110[1]),
        .I3(BUS4110[2]),
        .O(\COUNT_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0571)) 
    \seg1[5]_i_1__0 
       (.I0(BUS4110[1]),
        .I1(BUS4110[0]),
        .I2(BUS4110[2]),
        .I3(BUS4110[3]),
        .O(\COUNT_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h116E)) 
    \seg1[6]_i_1__0 
       (.I0(BUS4110[2]),
        .I1(BUS4110[1]),
        .I2(BUS4110[0]),
        .I3(BUS4110[3]),
        .O(\COUNT_reg[2]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_3
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[1]_0 ,
    BUS4100);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  output \COUNT_reg[1]_0 ;
  output [1:0]BUS4100;

  wire [1:0]BUS4100;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__6_n_0 ;
  wire \COUNT[1]_i_1__6_n_0 ;
  wire \COUNT[2]_i_1__6_n_0 ;
  wire \COUNT[3]_i_2__4_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__6 
       (.I0(\COUNT_reg[0]_0 ),
        .O(\COUNT[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h9998)) 
    \COUNT[1]_i_1__6 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS4100[1]),
        .I3(BUS4100[0]),
        .O(\COUNT[1]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \COUNT[2]_i_1__6 
       (.I0(BUS4100[0]),
        .I1(\COUNT_reg[1]_0 ),
        .I2(\COUNT_reg[0]_0 ),
        .O(\COUNT[2]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \COUNT[3]_i_2__4 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS4100[1]),
        .I3(BUS4100[0]),
        .O(\COUNT[3]_i_2__4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .D(\COUNT[0]_i_1__6_n_0 ),
        .PRE(CLR_IBUF),
        .Q(\COUNT_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__6_n_0 ),
        .Q(\COUNT_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .D(\COUNT[2]_i_1__6_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4100[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[3]_i_2__4_n_0 ),
        .Q(BUS4100[1]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_4
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[2]_0 );
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  output \COUNT_reg[3]_0 ;
  output [6:0]\COUNT_reg[2]_0 ;

  wire [3:0]BUS4096;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__2_n_0 ;
  wire \COUNT[1]_i_1__4_n_0 ;
  wire \COUNT[2]_i_1__4_n_0 ;
  wire \COUNT[3]_i_2__2_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__2 
       (.I0(BUS4096[0]),
        .O(\COUNT[0]_i_1__2_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__4 
       (.I0(BUS4096[3]),
        .I1(BUS4096[2]),
        .I2(BUS4096[1]),
        .I3(BUS4096[0]),
        .O(\COUNT[1]_i_1__4_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hCCC2)) 
    \COUNT[2]_i_1__4 
       (.I0(BUS4096[3]),
        .I1(BUS4096[2]),
        .I2(BUS4096[0]),
        .I3(BUS4096[1]),
        .O(\COUNT[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2__2 
       (.I0(BUS4096[3]),
        .I1(BUS4096[2]),
        .I2(BUS4096[1]),
        .I3(BUS4096[0]),
        .O(\COUNT[3]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \COUNT[3]_i_3__2 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[0]_1 ),
        .I2(BUS4096[3]),
        .I3(BUS4096[2]),
        .I4(BUS4096[1]),
        .I5(BUS4096[0]),
        .O(\COUNT_reg[3]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[0]_i_1__2_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4096[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__4_n_0 ),
        .Q(BUS4096[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[2]_i_1__4_n_0 ),
        .Q(BUS4096[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[3]_i_2__2_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4096[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0F39)) 
    \seg3[0]_i_1__0 
       (.I0(BUS4096[0]),
        .I1(BUS4096[2]),
        .I2(BUS4096[3]),
        .I3(BUS4096[1]),
        .O(\COUNT_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h3157)) 
    \seg3[1]_i_1__0 
       (.I0(BUS4096[2]),
        .I1(BUS4096[3]),
        .I2(BUS4096[0]),
        .I3(BUS4096[1]),
        .O(\COUNT_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1F1D)) 
    \seg3[2]_i_1__0 
       (.I0(BUS4096[1]),
        .I1(BUS4096[2]),
        .I2(BUS4096[3]),
        .I3(BUS4096[0]),
        .O(\COUNT_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h056B)) 
    \seg3[3]_i_1__0 
       (.I0(BUS4096[1]),
        .I1(BUS4096[0]),
        .I2(BUS4096[2]),
        .I3(BUS4096[3]),
        .O(\COUNT_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1013)) 
    \seg3[4]_i_1__0 
       (.I0(BUS4096[3]),
        .I1(BUS4096[0]),
        .I2(BUS4096[1]),
        .I3(BUS4096[2]),
        .O(\COUNT_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0571)) 
    \seg3[5]_i_1__0 
       (.I0(BUS4096[1]),
        .I1(BUS4096[0]),
        .I2(BUS4096[2]),
        .I3(BUS4096[3]),
        .O(\COUNT_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h116E)) 
    \seg3[6]_i_1__0 
       (.I0(BUS4096[2]),
        .I1(BUS4096[1]),
        .I2(BUS4096[0]),
        .I3(BUS4096[3]),
        .O(\COUNT_reg[2]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_7
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[2]_0 ,
    D);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input \COUNT_reg[0]_0 ;
  output \COUNT_reg[2]_0 ;
  output [6:0]D;

  wire [2:0]BUS4130;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__3_n_0 ;
  wire \COUNT[1]_i_1__0_n_0 ;
  wire \COUNT[2]_i_2_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[2]_0 ;
  wire [6:0]D;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__3 
       (.I0(BUS4130[0]),
        .O(\COUNT[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hC2)) 
    \COUNT[1]_i_1__0 
       (.I0(BUS4130[2]),
        .I1(BUS4130[1]),
        .I2(BUS4130[0]),
        .O(\COUNT[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \COUNT[2]_i_2 
       (.I0(BUS4130[2]),
        .I1(BUS4130[0]),
        .I2(BUS4130[1]),
        .O(\COUNT[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[3]_i_4__0 
       (.I0(BUS4130[2]),
        .I1(BUS4130[1]),
        .I2(BUS4130[0]),
        .O(\COUNT_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(\COUNT[0]_i_1__3_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4130[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__0_n_0 ),
        .Q(BUS4130[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(\COUNT[2]_i_2_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4130[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \seg0[0]_i_1 
       (.I0(BUS4130[0]),
        .I1(BUS4130[2]),
        .I2(BUS4130[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \seg0[1]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[1]),
        .I2(BUS4130[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \seg0[2]_i_1 
       (.I0(BUS4130[1]),
        .I1(BUS4130[2]),
        .I2(BUS4130[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6B)) 
    \seg0[3]_i_1 
       (.I0(BUS4130[1]),
        .I1(BUS4130[0]),
        .I2(BUS4130[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \seg0[4]_i_1 
       (.I0(BUS4130[0]),
        .I1(BUS4130[1]),
        .I2(BUS4130[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \seg0[5]_i_1 
       (.I0(BUS4130[1]),
        .I1(BUS4130[0]),
        .I2(BUS4130[2]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h6E)) 
    \seg0[6]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[1]),
        .I2(BUS4130[0]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_8
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[2]_0 );
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  output \COUNT_reg[3]_0 ;
  output [6:0]\COUNT_reg[2]_0 ;

  wire [3:0]BUS4126;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;
  wire [3:0]p_2_in;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1 
       (.I0(BUS4126[0]),
        .O(p_2_in[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "184" *) 
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1 
       (.I0(BUS4126[3]),
        .I1(BUS4126[2]),
        .I2(BUS4126[1]),
        .I3(BUS4126[0]),
        .O(p_2_in[1]));
  LUT4 #(
    .INIT(16'hCCC2)) 
    \COUNT[2]_i_1__1 
       (.I0(BUS4126[3]),
        .I1(BUS4126[2]),
        .I2(BUS4126[0]),
        .I3(BUS4126[1]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT[2]_i_3 
       (.I0(BUS4126[0]),
        .I1(BUS4126[1]),
        .I2(BUS4126[2]),
        .I3(BUS4126[3]),
        .O(\COUNT_reg[0]_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "184" *) 
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2 
       (.I0(BUS4126[3]),
        .I1(BUS4126[2]),
        .I2(BUS4126[1]),
        .I3(BUS4126[0]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \COUNT[3]_i_3__1 
       (.I0(\COUNT_reg[0]_1 ),
        .I1(BUS4126[3]),
        .I2(BUS4126[2]),
        .I3(BUS4126[1]),
        .I4(BUS4126[0]),
        .O(\COUNT_reg[3]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(p_2_in[0]),
        .PRE(CLR_IBUF),
        .Q(BUS4126[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(p_2_in[1]),
        .Q(BUS4126[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(CLR_IBUF),
        .D(p_2_in[2]),
        .Q(BUS4126[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(p_2_in[3]),
        .PRE(CLR_IBUF),
        .Q(BUS4126[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0F39)) 
    \seg1[0]_i_1 
       (.I0(BUS4126[0]),
        .I1(BUS4126[2]),
        .I2(BUS4126[3]),
        .I3(BUS4126[1]),
        .O(\COUNT_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'h3157)) 
    \seg1[1]_i_1 
       (.I0(BUS4126[2]),
        .I1(BUS4126[3]),
        .I2(BUS4126[0]),
        .I3(BUS4126[1]),
        .O(\COUNT_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1F1D)) 
    \seg1[2]_i_1 
       (.I0(BUS4126[1]),
        .I1(BUS4126[2]),
        .I2(BUS4126[3]),
        .I3(BUS4126[0]),
        .O(\COUNT_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h056B)) 
    \seg1[3]_i_1 
       (.I0(BUS4126[1]),
        .I1(BUS4126[0]),
        .I2(BUS4126[2]),
        .I3(BUS4126[3]),
        .O(\COUNT_reg[2]_0 [3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "184" *) 
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1013)) 
    \seg1[4]_i_1 
       (.I0(BUS4126[3]),
        .I1(BUS4126[0]),
        .I2(BUS4126[1]),
        .I3(BUS4126[2]),
        .O(\COUNT_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0571)) 
    \seg1[5]_i_1 
       (.I0(BUS4126[1]),
        .I1(BUS4126[0]),
        .I2(BUS4126[2]),
        .I3(BUS4126[3]),
        .O(\COUNT_reg[2]_0 [5]));
  (* \PinAttr:I3:HOLD_DETOUR  = "184" *) 
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h116E)) 
    \seg1[6]_i_1 
       (.I0(BUS4126[2]),
        .I1(BUS4126[1]),
        .I2(BUS4126[0]),
        .I3(BUS4126[3]),
        .O(\COUNT_reg[2]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_9
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[1]_0 ,
    BUS4122);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  output \COUNT_reg[1]_0 ;
  output [1:0]BUS4122;

  wire [1:0]BUS4122;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__5_n_0 ;
  wire \COUNT[1]_i_1__5_n_0 ;
  wire \COUNT[2]_i_1__5_n_0 ;
  wire \COUNT[3]_i_2__3_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__5 
       (.I0(\COUNT_reg[0]_0 ),
        .O(\COUNT[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9998)) 
    \COUNT[1]_i_1__5 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS4122[1]),
        .I3(BUS4122[0]),
        .O(\COUNT[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \COUNT[2]_i_1__5 
       (.I0(BUS4122[0]),
        .I1(\COUNT_reg[1]_0 ),
        .I2(\COUNT_reg[0]_0 ),
        .O(\COUNT[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \COUNT[3]_i_2__3 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS4122[1]),
        .I3(BUS4122[0]),
        .O(\COUNT[3]_i_2__3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .D(\COUNT[0]_i_1__5_n_0 ),
        .PRE(CLR_IBUF),
        .Q(\COUNT_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__5_n_0 ),
        .Q(\COUNT_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .D(\COUNT[2]_i_1__5_n_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4122[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[3]_i_2__3_n_0 ),
        .Q(BUS4122[1]));
endmodule

module Decoder
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    \seg3_reg[0]_0 ,
    \seg3_reg[1]_0 ,
    \seg3_reg[2]_0 ,
    \seg3_reg[3]_0 ,
    \seg3_reg[4]_0 ,
    \seg3_reg[5]_0 ,
    \seg3_reg[6]_0 ,
    BUS4122,
    D,
    counter2,
    \seg1_reg[6]_0 ,
    \seg3_reg[6]_1 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output \seg3_reg[0]_0 ;
  output \seg3_reg[1]_0 ;
  output \seg3_reg[2]_0 ;
  output \seg3_reg[3]_0 ;
  output \seg3_reg[4]_0 ;
  output \seg3_reg[5]_0 ;
  output \seg3_reg[6]_0 ;
  input [3:0]BUS4122;
  input [6:0]D;
  input [1:0]counter2;
  input [6:0]\seg1_reg[6]_0 ;
  input [6:0]\seg3_reg[6]_1 ;

  wire [3:0]BUS4122;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [6:0]D;
  wire [1:0]counter2;
  wire [6:0]seg0;
  wire [6:0]seg1;
  wire [6:0]\seg1_reg[6]_0 ;
  wire [6:0]seg2;
  wire \seg2[0]_i_1_n_0 ;
  wire \seg2[1]_i_1_n_0 ;
  wire \seg2[2]_i_1_n_0 ;
  wire \seg2[3]_i_1_n_0 ;
  wire \seg2[4]_i_1_n_0 ;
  wire \seg2[5]_i_1_n_0 ;
  wire \seg2[6]_i_1_n_0 ;
  wire [6:0]seg3;
  wire \seg3_reg[0]_0 ;
  wire \seg3_reg[1]_0 ;
  wire \seg3_reg[2]_0 ;
  wire \seg3_reg[3]_0 ;
  wire \seg3_reg[4]_0 ;
  wire \seg3_reg[5]_0 ;
  wire \seg3_reg[6]_0 ;
  wire [6:0]\seg3_reg[6]_1 ;

  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[0]),
        .Q(seg0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[1]),
        .Q(seg0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[2]),
        .Q(seg0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[3]),
        .Q(seg0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[4]),
        .Q(seg0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[5]),
        .Q(seg0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[6]),
        .Q(seg0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [0]),
        .Q(seg1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [1]),
        .Q(seg1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [2]),
        .Q(seg1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [3]),
        .Q(seg1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [4]),
        .Q(seg1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [5]),
        .Q(seg1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [6]),
        .Q(seg1[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \seg2[0]_i_1 
       (.I0(BUS4122[3]),
        .I1(BUS4122[2]),
        .I2(BUS4122[1]),
        .I3(BUS4122[0]),
        .O(\seg2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \seg2[1]_i_1 
       (.I0(BUS4122[3]),
        .I1(BUS4122[1]),
        .I2(BUS4122[0]),
        .I3(BUS4122[2]),
        .O(\seg2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \seg2[2]_i_1 
       (.I0(BUS4122[3]),
        .I1(BUS4122[2]),
        .I2(BUS4122[1]),
        .I3(BUS4122[0]),
        .O(\seg2[2]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "182" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \seg2[3]_i_1 
       (.I0(BUS4122[3]),
        .I1(BUS4122[2]),
        .I2(BUS4122[1]),
        .I3(BUS4122[0]),
        .O(\seg2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \seg2[4]_i_1 
       (.I0(BUS4122[3]),
        .I1(BUS4122[1]),
        .I2(BUS4122[2]),
        .I3(BUS4122[0]),
        .O(\seg2[4]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "182" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \seg2[5]_i_1 
       (.I0(BUS4122[3]),
        .I1(BUS4122[2]),
        .I2(BUS4122[1]),
        .I3(BUS4122[0]),
        .O(\seg2[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h155A)) 
    \seg2[6]_i_1 
       (.I0(BUS4122[3]),
        .I1(BUS4122[0]),
        .I2(BUS4122[2]),
        .I3(BUS4122[1]),
        .O(\seg2[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[0]_i_1_n_0 ),
        .Q(seg2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[1]_i_1_n_0 ),
        .Q(seg2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[2]_i_1_n_0 ),
        .Q(seg2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[3]_i_1_n_0 ),
        .Q(seg2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[4]_i_1_n_0 ),
        .Q(seg2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[5]_i_1_n_0 ),
        .Q(seg2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[6]_i_1_n_0 ),
        .Q(seg2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [0]),
        .Q(seg3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [1]),
        .Q(seg3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [2]),
        .Q(seg3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [3]),
        .Q(seg3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [4]),
        .Q(seg3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [5]),
        .Q(seg3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [6]),
        .Q(seg3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[0]_i_2 
       (.I0(seg3[0]),
        .I1(seg2[0]),
        .I2(counter2[1]),
        .I3(seg1[0]),
        .I4(counter2[0]),
        .I5(seg0[0]),
        .O(\seg3_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[1]_i_2 
       (.I0(seg3[1]),
        .I1(seg2[1]),
        .I2(counter2[1]),
        .I3(seg1[1]),
        .I4(counter2[0]),
        .I5(seg0[1]),
        .O(\seg3_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[2]_i_2 
       (.I0(seg3[2]),
        .I1(seg2[2]),
        .I2(counter2[1]),
        .I3(seg1[2]),
        .I4(counter2[0]),
        .I5(seg0[2]),
        .O(\seg3_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[3]_i_2 
       (.I0(seg3[3]),
        .I1(seg2[3]),
        .I2(counter2[1]),
        .I3(seg1[3]),
        .I4(counter2[0]),
        .I5(seg0[3]),
        .O(\seg3_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[4]_i_2 
       (.I0(seg3[4]),
        .I1(seg2[4]),
        .I2(counter2[1]),
        .I3(seg1[4]),
        .I4(counter2[0]),
        .I5(seg0[4]),
        .O(\seg3_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[5]_i_2 
       (.I0(seg3[5]),
        .I1(seg2[5]),
        .I2(counter2[1]),
        .I3(seg1[5]),
        .I4(counter2[0]),
        .I5(seg0[5]),
        .O(\seg3_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[6]_i_3 
       (.I0(seg3[6]),
        .I1(seg2[6]),
        .I2(counter2[1]),
        .I3(seg1[6]),
        .I4(counter2[0]),
        .I5(seg0[6]),
        .O(\seg3_reg[6]_0 ));
endmodule

(* ORIG_REF_NAME = "Decoder" *) 
module Decoder_0
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    \seg3_reg[0]_0 ,
    \seg3_reg[1]_0 ,
    \seg3_reg[2]_0 ,
    \seg3_reg[3]_0 ,
    \seg3_reg[4]_0 ,
    \seg3_reg[5]_0 ,
    \seg3_reg[6]_0 ,
    BUS4100,
    D,
    counter2,
    \seg1_reg[6]_0 ,
    \seg3_reg[6]_1 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output \seg3_reg[0]_0 ;
  output \seg3_reg[1]_0 ;
  output \seg3_reg[2]_0 ;
  output \seg3_reg[3]_0 ;
  output \seg3_reg[4]_0 ;
  output \seg3_reg[5]_0 ;
  output \seg3_reg[6]_0 ;
  input [3:0]BUS4100;
  input [6:0]D;
  input [1:0]counter2;
  input [6:0]\seg1_reg[6]_0 ;
  input [6:0]\seg3_reg[6]_1 ;

  wire [3:0]BUS4100;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [6:0]D;
  wire [1:0]counter2;
  wire [6:0]seg0_reg_n_0_;
  wire [6:0]\seg1_reg[6]_0 ;
  wire [6:0]seg1_reg_n_0_;
  wire \seg2[0]_i_1_n_0 ;
  wire \seg2[1]_i_1_n_0 ;
  wire \seg2[2]_i_1_n_0 ;
  wire \seg2[3]_i_1_n_0 ;
  wire \seg2[4]_i_1_n_0 ;
  wire \seg2[5]_i_1_n_0 ;
  wire \seg2[6]_i_1_n_0 ;
  wire [6:0]seg2_reg_n_0_;
  wire \seg3_reg[0]_0 ;
  wire \seg3_reg[1]_0 ;
  wire \seg3_reg[2]_0 ;
  wire \seg3_reg[3]_0 ;
  wire \seg3_reg[4]_0 ;
  wire \seg3_reg[5]_0 ;
  wire \seg3_reg[6]_0 ;
  wire [6:0]\seg3_reg[6]_1 ;
  wire [6:0]seg3_reg_n_0_;

  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[0]),
        .Q(seg0_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[1]),
        .Q(seg0_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[2]),
        .Q(seg0_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[3]),
        .Q(seg0_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[4]),
        .Q(seg0_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[5]),
        .Q(seg0_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(D[6]),
        .Q(seg0_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [0]),
        .Q(seg1_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [1]),
        .Q(seg1_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [2]),
        .Q(seg1_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [3]),
        .Q(seg1_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [4]),
        .Q(seg1_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [5]),
        .Q(seg1_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg1_reg[6]_0 [6]),
        .Q(seg1_reg_n_0_[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \seg2[0]_i_1 
       (.I0(BUS4100[3]),
        .I1(BUS4100[2]),
        .I2(BUS4100[1]),
        .I3(BUS4100[0]),
        .O(\seg2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \seg2[1]_i_1 
       (.I0(BUS4100[3]),
        .I1(BUS4100[1]),
        .I2(BUS4100[0]),
        .I3(BUS4100[2]),
        .O(\seg2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \seg2[2]_i_1 
       (.I0(BUS4100[3]),
        .I1(BUS4100[2]),
        .I2(BUS4100[1]),
        .I3(BUS4100[0]),
        .O(\seg2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \seg2[3]_i_1 
       (.I0(BUS4100[3]),
        .I1(BUS4100[2]),
        .I2(BUS4100[1]),
        .I3(BUS4100[0]),
        .O(\seg2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \seg2[4]_i_1 
       (.I0(BUS4100[3]),
        .I1(BUS4100[1]),
        .I2(BUS4100[2]),
        .I3(BUS4100[0]),
        .O(\seg2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \seg2[5]_i_1 
       (.I0(BUS4100[3]),
        .I1(BUS4100[2]),
        .I2(BUS4100[1]),
        .I3(BUS4100[0]),
        .O(\seg2[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h155A)) 
    \seg2[6]_i_1 
       (.I0(BUS4100[3]),
        .I1(BUS4100[0]),
        .I2(BUS4100[2]),
        .I3(BUS4100[1]),
        .O(\seg2[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[0]_i_1_n_0 ),
        .Q(seg2_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[1]_i_1_n_0 ),
        .Q(seg2_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[2]_i_1_n_0 ),
        .Q(seg2_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[3]_i_1_n_0 ),
        .Q(seg2_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[4]_i_1_n_0 ),
        .Q(seg2_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[5]_i_1_n_0 ),
        .Q(seg2_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg2[6]_i_1_n_0 ),
        .Q(seg2_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [0]),
        .Q(seg3_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [1]),
        .Q(seg3_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [2]),
        .Q(seg3_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [3]),
        .Q(seg3_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [4]),
        .Q(seg3_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [5]),
        .Q(seg3_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg3_reg[6]_1 [6]),
        .Q(seg3_reg_n_0_[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[0]_i_3 
       (.I0(seg3_reg_n_0_[0]),
        .I1(seg2_reg_n_0_[0]),
        .I2(counter2[1]),
        .I3(seg1_reg_n_0_[0]),
        .I4(counter2[0]),
        .I5(seg0_reg_n_0_[0]),
        .O(\seg3_reg[0]_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "162" *) 
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[1]_i_3 
       (.I0(seg3_reg_n_0_[1]),
        .I1(seg2_reg_n_0_[1]),
        .I2(counter2[1]),
        .I3(seg1_reg_n_0_[1]),
        .I4(counter2[0]),
        .I5(seg0_reg_n_0_[1]),
        .O(\seg3_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[2]_i_3 
       (.I0(seg3_reg_n_0_[2]),
        .I1(seg2_reg_n_0_[2]),
        .I2(counter2[1]),
        .I3(seg1_reg_n_0_[2]),
        .I4(counter2[0]),
        .I5(seg0_reg_n_0_[2]),
        .O(\seg3_reg[2]_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "151" *) 
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[3]_i_3 
       (.I0(seg3_reg_n_0_[3]),
        .I1(seg2_reg_n_0_[3]),
        .I2(counter2[1]),
        .I3(seg1_reg_n_0_[3]),
        .I4(counter2[0]),
        .I5(seg0_reg_n_0_[3]),
        .O(\seg3_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[4]_i_3 
       (.I0(seg3_reg_n_0_[4]),
        .I1(seg2_reg_n_0_[4]),
        .I2(counter2[1]),
        .I3(seg1_reg_n_0_[4]),
        .I4(counter2[0]),
        .I5(seg0_reg_n_0_[4]),
        .O(\seg3_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[5]_i_3 
       (.I0(seg3_reg_n_0_[5]),
        .I1(seg2_reg_n_0_[5]),
        .I2(counter2[1]),
        .I3(seg1_reg_n_0_[5]),
        .I4(counter2[0]),
        .I5(seg0_reg_n_0_[5]),
        .O(\seg3_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[6]_i_4 
       (.I0(seg3_reg_n_0_[6]),
        .I1(seg2_reg_n_0_[6]),
        .I2(counter2[1]),
        .I3(seg1_reg_n_0_[6]),
        .I4(counter2[0]),
        .I5(seg0_reg_n_0_[6]),
        .O(\seg3_reg[6]_0 ));
endmodule

module Minute_counter
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    BUS4100,
    \COUNT_reg[2] );
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output [3:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[0]_3 ;
  output [1:0]BUS4100;
  output [6:0]\COUNT_reg[2] ;

  wire [1:0]BUS4100;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire [6:0]\COUNT_reg[2] ;

  Counter_3 tens_min
       (.BUS4100(BUS4100),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[1]_0 (COUNT_reg[1]));
  Counter_4 unit_min
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_3 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[3]_0 (COUNT_reg[3]));
endmodule

(* ORIG_REF_NAME = "Minute_counter" *) 
module Minute_counter_5
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    BUS4122,
    \COUNT_reg[2] );
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output [3:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[0]_3 ;
  output [1:0]BUS4122;
  output [6:0]\COUNT_reg[2] ;

  wire [1:0]BUS4122;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire [6:0]\COUNT_reg[2] ;

  Counter_9 tens_min
       (.BUS4122(BUS4122),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[1]_0 (COUNT_reg[1]));
  Counter_10 unit_min
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_3 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[3]_0 (COUNT_reg[3]));
endmodule

module Prescaler
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    \COUNT_reg[0]_4 ,
    ENABLE1,
    ENABLE2,
    NET7768,
    NET7772,
    NET7776,
    NET7780,
    NET7784,
    NET7792,
    NET7800,
    NET7808,
    r_D1_reg,
    r_D2_reg,
    r_D3_reg,
    r_D4_reg,
    r_D5_reg,
    r_D6_reg,
    r_D7_reg,
    r_D8_reg);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input [0:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[0]_3 ;
  input \COUNT_reg[0]_4 ;
  input ENABLE1;
  input ENABLE2;
  input NET7768;
  input NET7772;
  input NET7776;
  input NET7780;
  input NET7784;
  input NET7792;
  input NET7800;
  input NET7808;
  output r_D1_reg;
  output r_D2_reg;
  output r_D3_reg;
  output r_D4_reg;
  output r_D5_reg;
  output r_D6_reg;
  output r_D7_reg;
  output r_D8_reg;

  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[2]_i_10_n_0 ;
  wire \COUNT[2]_i_11_n_0 ;
  wire \COUNT[2]_i_4_n_0 ;
  wire \COUNT[2]_i_5_n_0 ;
  wire \COUNT[2]_i_6_n_0 ;
  wire \COUNT[2]_i_7_n_0 ;
  wire \COUNT[2]_i_8_n_0 ;
  wire \COUNT[2]_i_9_n_0 ;
  wire \COUNT[3]_i_3_n_0 ;
  wire \COUNT[3]_i_4_n_0 ;
  wire [0:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire \COUNT_reg[0]_4 ;
  wire [26:0]Divider;
  wire Divider0_carry__0_n_0;
  wire Divider0_carry__1_n_0;
  wire Divider0_carry__2_n_0;
  wire Divider0_carry__3_n_0;
  wire Divider0_carry__4_n_0;
  wire Divider0_carry_n_0;
  wire [26:0]Divider_reg_n_0_;
  wire ENABLE1;
  wire ENABLE2;
  wire NET7768;
  wire NET7772;
  wire NET7776;
  wire NET7780;
  wire NET7784;
  wire NET7792;
  wire NET7800;
  wire NET7808;
  wire [26:1]data0;
  wire r_D1_reg;
  wire r_D2_reg;
  wire r_D3_reg;
  wire r_D4_reg;
  wire r_D5_reg;
  wire r_D6_reg;
  wire r_D7_reg;
  wire r_D8_reg;
  wire [2:0]NLW_Divider0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_Divider0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_Divider0_carry__5_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h000B0000000A0000)) 
    \COUNT[2]_i_1 
       (.I0(NET7792),
        .I1(\COUNT_reg[0]_1 ),
        .I2(\COUNT[2]_i_4_n_0 ),
        .I3(\COUNT[2]_i_5_n_0 ),
        .I4(CE_IBUF),
        .I5(ENABLE2),
        .O(r_D6_reg));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[2]_i_10 
       (.I0(Divider_reg_n_0_[22]),
        .I1(Divider_reg_n_0_[21]),
        .I2(Divider_reg_n_0_[24]),
        .I3(Divider_reg_n_0_[23]),
        .O(\COUNT[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[2]_i_11 
       (.I0(Divider_reg_n_0_[2]),
        .I1(Divider_reg_n_0_[1]),
        .I2(Divider_reg_n_0_[4]),
        .I3(Divider_reg_n_0_[3]),
        .O(\COUNT[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000B0000000A0000)) 
    \COUNT[2]_i_1__0 
       (.I0(NET7772),
        .I1(\COUNT_reg[0]_4 ),
        .I2(\COUNT[2]_i_4_n_0 ),
        .I3(\COUNT[2]_i_5_n_0 ),
        .I4(CE_IBUF),
        .I5(ENABLE1),
        .O(r_D2_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT[2]_i_4 
       (.I0(\COUNT[2]_i_6_n_0 ),
        .I1(\COUNT[2]_i_7_n_0 ),
        .I2(\COUNT[2]_i_8_n_0 ),
        .I3(\COUNT[2]_i_9_n_0 ),
        .O(\COUNT[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \COUNT[2]_i_5 
       (.I0(Divider_reg_n_0_[26]),
        .I1(Divider_reg_n_0_[25]),
        .I2(Divider_reg_n_0_[0]),
        .I3(\COUNT[2]_i_10_n_0 ),
        .I4(\COUNT[2]_i_11_n_0 ),
        .O(\COUNT[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT[2]_i_6 
       (.I0(Divider_reg_n_0_[10]),
        .I1(Divider_reg_n_0_[9]),
        .I2(Divider_reg_n_0_[12]),
        .I3(Divider_reg_n_0_[11]),
        .O(\COUNT[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \COUNT[2]_i_7 
       (.I0(Divider_reg_n_0_[6]),
        .I1(Divider_reg_n_0_[5]),
        .I2(Divider_reg_n_0_[7]),
        .I3(Divider_reg_n_0_[8]),
        .O(\COUNT[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \COUNT[2]_i_8 
       (.I0(Divider_reg_n_0_[18]),
        .I1(Divider_reg_n_0_[17]),
        .I2(Divider_reg_n_0_[20]),
        .I3(Divider_reg_n_0_[19]),
        .O(\COUNT[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[2]_i_9 
       (.I0(Divider_reg_n_0_[14]),
        .I1(Divider_reg_n_0_[13]),
        .I2(Divider_reg_n_0_[16]),
        .I3(Divider_reg_n_0_[15]),
        .O(\COUNT[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0300020002000200)) 
    \COUNT[3]_i_1 
       (.I0(NET7808),
        .I1(\COUNT[2]_i_4_n_0 ),
        .I2(\COUNT[2]_i_5_n_0 ),
        .I3(CE_IBUF),
        .I4(ENABLE2),
        .I5(COUNT_reg),
        .O(r_D8_reg));
  LUT6 #(
    .INIT(64'h0300020002000200)) 
    \COUNT[3]_i_1__0 
       (.I0(NET7800),
        .I1(\COUNT[2]_i_4_n_0 ),
        .I2(\COUNT[2]_i_5_n_0 ),
        .I3(CE_IBUF),
        .I4(ENABLE2),
        .I5(\COUNT_reg[0]_0 ),
        .O(r_D7_reg));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \COUNT[3]_i_1__1 
       (.I0(NET7784),
        .I1(ENABLE2),
        .I2(CE_IBUF),
        .I3(\COUNT[2]_i_5_n_0 ),
        .I4(\COUNT[3]_i_3_n_0 ),
        .I5(\COUNT[3]_i_4_n_0 ),
        .O(r_D5_reg));
  LUT6 #(
    .INIT(64'h0300020002000200)) 
    \COUNT[3]_i_1__2 
       (.I0(NET7780),
        .I1(\COUNT[2]_i_4_n_0 ),
        .I2(\COUNT[2]_i_5_n_0 ),
        .I3(CE_IBUF),
        .I4(ENABLE1),
        .I5(\COUNT_reg[0]_2 ),
        .O(r_D4_reg));
  LUT6 #(
    .INIT(64'h0300020002000200)) 
    \COUNT[3]_i_1__3 
       (.I0(NET7776),
        .I1(\COUNT[2]_i_4_n_0 ),
        .I2(\COUNT[2]_i_5_n_0 ),
        .I3(CE_IBUF),
        .I4(ENABLE1),
        .I5(\COUNT_reg[0]_3 ),
        .O(r_D3_reg));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \COUNT[3]_i_1__4 
       (.I0(NET7768),
        .I1(ENABLE1),
        .I2(CE_IBUF),
        .I3(\COUNT[2]_i_5_n_0 ),
        .I4(\COUNT[3]_i_3_n_0 ),
        .I5(\COUNT[3]_i_4_n_0 ),
        .O(r_D1_reg));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \COUNT[3]_i_3 
       (.I0(Divider_reg_n_0_[8]),
        .I1(Divider_reg_n_0_[7]),
        .I2(Divider_reg_n_0_[5]),
        .I3(Divider_reg_n_0_[6]),
        .I4(\COUNT[2]_i_6_n_0 ),
        .O(\COUNT[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \COUNT[3]_i_4 
       (.I0(Divider_reg_n_0_[15]),
        .I1(Divider_reg_n_0_[16]),
        .I2(Divider_reg_n_0_[13]),
        .I3(Divider_reg_n_0_[14]),
        .I4(\COUNT[2]_i_8_n_0 ),
        .O(\COUNT[3]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Divider0_carry
       (.CI(1'b0),
        .CO({Divider0_carry_n_0,NLW_Divider0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Divider_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Divider_reg_n_0_[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Divider0_carry__0
       (.CI(Divider0_carry_n_0),
        .CO({Divider0_carry__0_n_0,NLW_Divider0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Divider_reg_n_0_[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Divider0_carry__1
       (.CI(Divider0_carry__0_n_0),
        .CO({Divider0_carry__1_n_0,NLW_Divider0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(Divider_reg_n_0_[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Divider0_carry__2
       (.CI(Divider0_carry__1_n_0),
        .CO({Divider0_carry__2_n_0,NLW_Divider0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(Divider_reg_n_0_[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Divider0_carry__3
       (.CI(Divider0_carry__2_n_0),
        .CO({Divider0_carry__3_n_0,NLW_Divider0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(Divider_reg_n_0_[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Divider0_carry__4
       (.CI(Divider0_carry__3_n_0),
        .CO({Divider0_carry__4_n_0,NLW_Divider0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(Divider_reg_n_0_[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Divider0_carry__5
       (.CI(Divider0_carry__4_n_0),
        .CO(NLW_Divider0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Divider0_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,Divider_reg_n_0_[26:25]}));
  LUT1 #(
    .INIT(2'h1)) 
    \Divider[0]_i_1 
       (.I0(Divider_reg_n_0_[0]),
        .O(Divider[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[10]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[10]),
        .O(Divider[10]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[11]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[11]),
        .O(Divider[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[12]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[12]),
        .O(Divider[12]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[13]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[13]),
        .O(Divider[13]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[14]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[14]),
        .O(Divider[14]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[15]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[15]),
        .O(Divider[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[16]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[16]),
        .O(Divider[16]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[17]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[17]),
        .O(Divider[17]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[18]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[18]),
        .O(Divider[18]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[19]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[19]),
        .O(Divider[19]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[1]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[1]),
        .O(Divider[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[20]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[20]),
        .O(Divider[20]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[21]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[21]),
        .O(Divider[21]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[22]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[22]),
        .O(Divider[22]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[23]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[23]),
        .O(Divider[23]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[24]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[24]),
        .O(Divider[24]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[25]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[25]),
        .O(Divider[25]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[26]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[26]),
        .O(Divider[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[2]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[2]),
        .O(Divider[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[3]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[3]),
        .O(Divider[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[4]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[4]),
        .O(Divider[4]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[5]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[5]),
        .O(Divider[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[6]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[6]),
        .O(Divider[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[7]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[7]),
        .O(Divider[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[8]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[8]),
        .O(Divider[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \Divider[9]_i_1 
       (.I0(\COUNT[2]_i_5_n_0 ),
        .I1(\COUNT[3]_i_3_n_0 ),
        .I2(\COUNT[3]_i_4_n_0 ),
        .I3(data0[9]),
        .O(Divider[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[0]),
        .Q(Divider_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[10]),
        .Q(Divider_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[11]),
        .Q(Divider_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[12]),
        .Q(Divider_reg_n_0_[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[13]),
        .Q(Divider_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[14]),
        .Q(Divider_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[15]),
        .Q(Divider_reg_n_0_[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[16]),
        .Q(Divider_reg_n_0_[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[17]),
        .Q(Divider_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[18]),
        .Q(Divider_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[19]),
        .Q(Divider_reg_n_0_[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[1]),
        .Q(Divider_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[20]),
        .Q(Divider_reg_n_0_[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[21]),
        .Q(Divider_reg_n_0_[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[22]),
        .Q(Divider_reg_n_0_[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[23]),
        .Q(Divider_reg_n_0_[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[24]),
        .Q(Divider_reg_n_0_[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[25]),
        .Q(Divider_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[26]),
        .Q(Divider_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[2]),
        .Q(Divider_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[3]),
        .Q(Divider_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[4]),
        .Q(Divider_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[5]),
        .Q(Divider_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[6]),
        .Q(Divider_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[7]),
        .Q(Divider_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[8]),
        .Q(Divider_reg_n_0_[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[9]),
        .Q(Divider_reg_n_0_[9]));
endmodule

module Second_counter
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2] ,
    D);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output [3:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  output \COUNT_reg[2]_0 ;
  output [6:0]\COUNT_reg[2] ;
  output [6:0]D;

  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]\COUNT_reg[2] ;
  wire \COUNT_reg[2]_0 ;
  wire [6:0]D;

  Counter tens_sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2]_0 ),
        .D(D));
  Counter_2 unit_sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[0]_1 (\COUNT_reg[2]_0 ),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[3]_0 (COUNT_reg[3]));
endmodule

(* ORIG_REF_NAME = "Second_counter" *) 
module Second_counter_6
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2] ,
    D);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output [3:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  output \COUNT_reg[2]_0 ;
  output [6:0]\COUNT_reg[2] ;
  output [6:0]D;

  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]\COUNT_reg[2] ;
  wire \COUNT_reg[2]_0 ;
  wire [6:0]D;

  Counter_7 tens_sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2]_0 ),
        .D(D));
  Counter_8 unit_sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[0]_1 (\COUNT_reg[2]_0 ),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[3]_0 (COUNT_reg[3]));
endmodule

module Seven_seg_driver
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    \seg_out_reg[0]_0 ,
    \seg_out_reg[0]_1 ,
    \seg_out_reg[1]_0 ,
    \seg_out_reg[1]_1 ,
    \seg_out_reg[2]_0 ,
    \seg_out_reg[2]_1 ,
    \seg_out_reg[3]_0 ,
    \seg_out_reg[3]_1 ,
    \seg_out_reg[4]_0 ,
    \seg_out_reg[4]_1 ,
    \seg_out_reg[5]_0 ,
    \seg_out_reg[5]_1 ,
    \seg_out_reg[6]_0 ,
    \seg_out_reg[6]_1 ,
    Q,
    \counter2_reg[1]_0 ,
    \seg_select_reg[7]_0 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input \seg_out_reg[0]_0 ;
  input \seg_out_reg[0]_1 ;
  input \seg_out_reg[1]_0 ;
  input \seg_out_reg[1]_1 ;
  input \seg_out_reg[2]_0 ;
  input \seg_out_reg[2]_1 ;
  input \seg_out_reg[3]_0 ;
  input \seg_out_reg[3]_1 ;
  input \seg_out_reg[4]_0 ;
  input \seg_out_reg[4]_1 ;
  input \seg_out_reg[5]_0 ;
  input \seg_out_reg[5]_1 ;
  input \seg_out_reg[6]_0 ;
  input \seg_out_reg[6]_1 ;
  output [6:0]Q;
  output [1:0]\counter2_reg[1]_0 ;
  output [7:0]\seg_select_reg[7]_0 ;

  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [6:0]Q;
  wire [3:0]counter1_reg;
  wire [2:2]counter2;
  wire \counter2[0]_i_1_n_0 ;
  wire \counter2[1]_i_1_n_0 ;
  wire \counter2[2]_i_1_n_0 ;
  wire [1:0]\counter2_reg[1]_0 ;
  wire [3:0]p_0_in;
  wire [6:0]seg_out;
  wire \seg_out[6]_i_1_n_0 ;
  wire \seg_out_reg[0]_0 ;
  wire \seg_out_reg[0]_1 ;
  wire \seg_out_reg[1]_0 ;
  wire \seg_out_reg[1]_1 ;
  wire \seg_out_reg[2]_0 ;
  wire \seg_out_reg[2]_1 ;
  wire \seg_out_reg[3]_0 ;
  wire \seg_out_reg[3]_1 ;
  wire \seg_out_reg[4]_0 ;
  wire \seg_out_reg[4]_1 ;
  wire \seg_out_reg[5]_0 ;
  wire \seg_out_reg[5]_1 ;
  wire \seg_out_reg[6]_0 ;
  wire \seg_out_reg[6]_1 ;
  wire \seg_select[0]_i_1_n_0 ;
  wire \seg_select[1]_i_1_n_0 ;
  wire \seg_select[2]_i_1_n_0 ;
  wire \seg_select[3]_i_1_n_0 ;
  wire \seg_select[4]_i_1_n_0 ;
  wire \seg_select[5]_i_1_n_0 ;
  wire \seg_select[6]_i_1_n_0 ;
  wire \seg_select[7]_i_1_n_0 ;
  wire [7:0]\seg_select_reg[7]_0 ;

  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[0]_i_1 
       (.I0(counter1_reg[0]),
        .O(p_0_in[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter1[1]_i_1 
       (.I0(counter1_reg[0]),
        .I1(counter1_reg[1]),
        .O(p_0_in[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "199" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1[2]_i_1 
       (.I0(counter1_reg[1]),
        .I1(counter1_reg[0]),
        .I2(counter1_reg[2]),
        .O(p_0_in[2]));
  (* \PinAttr:I0:HOLD_DETOUR  = "199" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1[3]_i_1 
       (.I0(counter1_reg[0]),
        .I1(counter1_reg[1]),
        .I2(counter1_reg[2]),
        .I3(counter1_reg[3]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[0]),
        .Q(counter1_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[1]),
        .Q(counter1_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[2]),
        .Q(counter1_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[3]),
        .Q(counter1_reg[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter2[0]_i_1 
       (.I0(counter1_reg[3]),
        .I1(CE_IBUF),
        .I2(counter1_reg[2]),
        .I3(counter1_reg[1]),
        .I4(counter1_reg[0]),
        .I5(\counter2_reg[1]_0 [0]),
        .O(\counter2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter2[1]_i_1 
       (.I0(\counter2_reg[1]_0 [0]),
        .I1(\seg_out[6]_i_1_n_0 ),
        .I2(\counter2_reg[1]_0 [1]),
        .O(\counter2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter2[2]_i_1 
       (.I0(\counter2_reg[1]_0 [1]),
        .I1(\counter2_reg[1]_0 [0]),
        .I2(\seg_out[6]_i_1_n_0 ),
        .I3(counter2),
        .O(\counter2[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\counter2[0]_i_1_n_0 ),
        .Q(\counter2_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\counter2[1]_i_1_n_0 ),
        .Q(\counter2_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\counter2[2]_i_1_n_0 ),
        .Q(counter2));
  LUT5 #(
    .INIT(32'h80000000)) 
    \seg_out[6]_i_1 
       (.I0(counter1_reg[0]),
        .I1(counter1_reg[1]),
        .I2(counter1_reg[2]),
        .I3(CE_IBUF),
        .I4(counter1_reg[3]),
        .O(\seg_out[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(seg_out[0]),
        .Q(Q[0]));
  MUXF7 \seg_out_reg[0]_i_1 
       (.I0(\seg_out_reg[0]_0 ),
        .I1(\seg_out_reg[0]_1 ),
        .O(seg_out[0]),
        .S(counter2));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(seg_out[1]),
        .Q(Q[1]));
  MUXF7 \seg_out_reg[1]_i_1 
       (.I0(\seg_out_reg[1]_0 ),
        .I1(\seg_out_reg[1]_1 ),
        .O(seg_out[1]),
        .S(counter2));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(seg_out[2]),
        .Q(Q[2]));
  MUXF7 \seg_out_reg[2]_i_1 
       (.I0(\seg_out_reg[2]_0 ),
        .I1(\seg_out_reg[2]_1 ),
        .O(seg_out[2]),
        .S(counter2));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(seg_out[3]),
        .Q(Q[3]));
  MUXF7 \seg_out_reg[3]_i_1 
       (.I0(\seg_out_reg[3]_0 ),
        .I1(\seg_out_reg[3]_1 ),
        .O(seg_out[3]),
        .S(counter2));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(seg_out[4]),
        .Q(Q[4]));
  MUXF7 \seg_out_reg[4]_i_1 
       (.I0(\seg_out_reg[4]_0 ),
        .I1(\seg_out_reg[4]_1 ),
        .O(seg_out[4]),
        .S(counter2));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(seg_out[5]),
        .Q(Q[5]));
  MUXF7 \seg_out_reg[5]_i_1 
       (.I0(\seg_out_reg[5]_0 ),
        .I1(\seg_out_reg[5]_1 ),
        .O(seg_out[5]),
        .S(counter2));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(seg_out[6]),
        .Q(Q[6]));
  MUXF7 \seg_out_reg[6]_i_2 
       (.I0(\seg_out_reg[6]_0 ),
        .I1(\seg_out_reg[6]_1 ),
        .O(seg_out[6]),
        .S(counter2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \seg_select[0]_i_1 
       (.I0(counter2),
        .I1(\counter2_reg[1]_0 [0]),
        .I2(\counter2_reg[1]_0 [1]),
        .O(\seg_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg_select[1]_i_1 
       (.I0(counter2),
        .I1(\counter2_reg[1]_0 [0]),
        .I2(\counter2_reg[1]_0 [1]),
        .O(\seg_select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg_select[2]_i_1 
       (.I0(\counter2_reg[1]_0 [0]),
        .I1(\counter2_reg[1]_0 [1]),
        .I2(counter2),
        .O(\seg_select[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \seg_select[3]_i_1 
       (.I0(\counter2_reg[1]_0 [1]),
        .I1(\counter2_reg[1]_0 [0]),
        .I2(counter2),
        .O(\seg_select[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg_select[4]_i_1 
       (.I0(\counter2_reg[1]_0 [0]),
        .I1(counter2),
        .I2(\counter2_reg[1]_0 [1]),
        .O(\seg_select[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \seg_select[5]_i_1 
       (.I0(counter2),
        .I1(\counter2_reg[1]_0 [0]),
        .I2(\counter2_reg[1]_0 [1]),
        .O(\seg_select[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \seg_select[6]_i_1 
       (.I0(\counter2_reg[1]_0 [1]),
        .I1(counter2),
        .I2(\counter2_reg[1]_0 [0]),
        .O(\seg_select[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \seg_select[7]_i_1 
       (.I0(\counter2_reg[1]_0 [1]),
        .I1(counter2),
        .I2(\counter2_reg[1]_0 [0]),
        .O(\seg_select[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[0]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[1]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[2]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[3]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[4]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[5]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[6]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[7]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [7]));
endmodule

module Switch
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    ENABLE1,
    ENABLE2,
    SELECT_IBUF,
    STOP_IBUF);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output ENABLE1;
  output ENABLE2;
  input SELECT_IBUF;
  input STOP_IBUF;

  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire ENABLE1;
  wire ENABLE2;
  wire En1;
  wire En2_i_1_n_0;
  wire SELECT_IBUF;
  wire STOP_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    En1_i_1
       (.I0(STOP_IBUF),
        .I1(CE_IBUF),
        .I2(SELECT_IBUF),
        .O(En1));
  FDCE #(
    .INIT(1'b0)) 
    En1_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(En1),
        .Q(ENABLE1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h40)) 
    En2_i_1
       (.I0(STOP_IBUF),
        .I1(CE_IBUF),
        .I2(SELECT_IBUF),
        .O(En2_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    En2_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(En2_i_1_n_0),
        .Q(ENABLE2));
endmodule

module Timer_Clock
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    \COUNT_reg[3]_0 ,
    BUS4122,
    \COUNT_reg[2] ,
    \COUNT_reg[2]_0 ,
    D);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output [3:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[0]_3 ;
  output \COUNT_reg[3]_0 ;
  output [3:0]BUS4122;
  output [6:0]\COUNT_reg[2] ;
  output [6:0]\COUNT_reg[2]_0 ;
  output [6:0]D;

  wire [3:0]BUS4122;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire [6:0]\COUNT_reg[2] ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;
  wire [6:0]D;
  wire sec_n_8;
  wire [2:2]NLW_min_COUNT_reg_UNCONNECTED;
  wire [2:1]NLW_sec_COUNT_reg_UNCONNECTED;

  Minute_counter_5 min
       (.BUS4122(BUS4122[3:2]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .COUNT_reg({COUNT_reg[3:2],BUS4122[1:0]}),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[0]_1 (sec_n_8),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[0]_3 (\COUNT_reg[0]_3 ),
        .\COUNT_reg[2] (\COUNT_reg[2]_0 ));
  Second_counter_6 sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .COUNT_reg({\COUNT_reg[3]_0 ,NLW_sec_COUNT_reg_UNCONNECTED[2:1],COUNT_reg[0]}),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[2] (\COUNT_reg[2] ),
        .\COUNT_reg[2]_0 (sec_n_8),
        .D(D));
endmodule

(* ORIG_REF_NAME = "Timer_Clock" *) 
module Timer_Clock_1
   (CLK_IBUF_BUFG,
    CLR_IBUF,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    \COUNT_reg[3]_0 ,
    BUS4100,
    \COUNT_reg[2] ,
    \COUNT_reg[2]_0 ,
    D);
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output [3:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[0]_3 ;
  output \COUNT_reg[3]_0 ;
  output [3:0]BUS4100;
  output [6:0]\COUNT_reg[2] ;
  output [6:0]\COUNT_reg[2]_0 ;
  output [6:0]D;

  wire [3:0]BUS4100;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire [6:0]\COUNT_reg[2] ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;
  wire [6:0]D;
  wire sec_n_8;
  wire [2:2]NLW_min_COUNT_reg_UNCONNECTED;
  wire [2:1]NLW_sec_COUNT_reg_UNCONNECTED;

  Minute_counter min
       (.BUS4100(BUS4100[3:2]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .COUNT_reg({COUNT_reg[3:2],BUS4100[1:0]}),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[0]_1 (sec_n_8),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[0]_3 (\COUNT_reg[0]_3 ),
        .\COUNT_reg[2] (\COUNT_reg[2]_0 ));
  Second_counter sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .COUNT_reg({\COUNT_reg[3]_0 ,NLW_sec_COUNT_reg_UNCONNECTED[2:1],COUNT_reg[0]}),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[2] (\COUNT_reg[2] ),
        .\COUNT_reg[2]_0 (sec_n_8),
        .D(D));
endmodule

module Timer_Setter
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    D1_IBUF,
    D2_IBUF,
    D3_IBUF,
    D4_IBUF,
    D5_IBUF,
    D6_IBUF,
    D7_IBUF,
    D8_IBUF,
    NET7768,
    NET7772,
    NET7776,
    NET7780,
    NET7784,
    NET7792,
    NET7800,
    NET7808,
    STOP_IBUF,
    Set_Impulse_IBUF);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input D1_IBUF;
  input D2_IBUF;
  input D3_IBUF;
  input D4_IBUF;
  input D5_IBUF;
  input D6_IBUF;
  input D7_IBUF;
  input D8_IBUF;
  output NET7768;
  output NET7772;
  output NET7776;
  output NET7780;
  output NET7784;
  output NET7792;
  output NET7800;
  output NET7808;
  input STOP_IBUF;
  input Set_Impulse_IBUF;

  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire D1_IBUF;
  wire D2_IBUF;
  wire D3_IBUF;
  wire D4_IBUF;
  wire D5_IBUF;
  wire D6_IBUF;
  wire D7_IBUF;
  wire D8_IBUF;
  wire NET7768;
  wire NET7772;
  wire NET7776;
  wire NET7780;
  wire NET7784;
  wire NET7792;
  wire NET7800;
  wire NET7808;
  wire STOP_IBUF;
  wire Set_Impulse_IBUF;
  wire r_D1;
  wire r_D2;
  wire r_D3;
  wire r_D4;
  wire r_D5;
  wire r_D6;
  wire r_D7;
  wire r_D8;

  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D1_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D1_IBUF),
        .O(r_D1));
  FDCE #(
    .INIT(1'b0)) 
    r_D1_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D1),
        .Q(NET7768));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D2_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D2_IBUF),
        .O(r_D2));
  FDCE #(
    .INIT(1'b0)) 
    r_D2_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D2),
        .Q(NET7772));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D3_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D3_IBUF),
        .O(r_D3));
  FDCE #(
    .INIT(1'b0)) 
    r_D3_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D3),
        .Q(NET7776));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D4_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D4_IBUF),
        .O(r_D4));
  FDCE #(
    .INIT(1'b0)) 
    r_D4_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D4),
        .Q(NET7780));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D5_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D5_IBUF),
        .O(r_D5));
  FDCE #(
    .INIT(1'b0)) 
    r_D5_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D5),
        .Q(NET7784));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D6_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D6_IBUF),
        .O(r_D6));
  FDCE #(
    .INIT(1'b0)) 
    r_D6_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D6),
        .Q(NET7792));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D7_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D7_IBUF),
        .O(r_D7));
  FDCE #(
    .INIT(1'b0)) 
    r_D7_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D7),
        .Q(NET7800));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D8_i_1
       (.I0(STOP_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(D8_IBUF),
        .O(r_D8));
  FDCE #(
    .INIT(1'b0)) 
    r_D8_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D8),
        .Q(NET7808));
endmodule

(* ECO_CHECKSUM = "b0e621a5" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Top
   (CE,
    CLK,
    CLR,
    D1,
    D2,
    D3,
    D4,
    D5,
    D6,
    D7,
    D8,
    SELECT,
    STOP,
    Set_Impulse,
    seg_out,
    seg_select);
  input CE;
  input CLK;
  input CLR;
  input D1;
  input D2;
  input D3;
  input D4;
  input D5;
  input D6;
  input D7;
  input D8;
  input SELECT;
  input STOP;
  input Set_Impulse;
  output [6:0]seg_out;
  output [7:0]seg_select;

  wire [3:0]BUS4100;
  wire [3:0]BUS4122;
  wire CE;
  wire CE_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire D1;
  wire D1_IBUF;
  wire D2;
  wire D2_IBUF;
  wire D3;
  wire D3_IBUF;
  wire D4;
  wire D4_IBUF;
  wire D5;
  wire D5_IBUF;
  wire D6;
  wire D6_IBUF;
  wire D7;
  wire D7_IBUF;
  wire D8;
  wire D8_IBUF;
  wire ENABLE1;
  wire ENABLE2;
  wire NET7768;
  wire NET7772;
  wire NET7776;
  wire NET7780;
  wire NET7784;
  wire NET7792;
  wire NET7800;
  wire NET7808;
  wire SELECT;
  wire SELECT_IBUF;
  wire STOP;
  wire STOP_IBUF;
  wire Set_Impulse;
  wire Set_Impulse_IBUF;
  wire U13_n_0;
  wire U13_n_1;
  wire U13_n_2;
  wire U13_n_3;
  wire U13_n_4;
  wire U13_n_5;
  wire U13_n_6;
  wire U14_n_0;
  wire U14_n_1;
  wire U14_n_2;
  wire U14_n_3;
  wire U14_n_4;
  wire U14_n_5;
  wire U14_n_6;
  wire U3_n_0;
  wire U3_n_1;
  wire U3_n_17;
  wire U3_n_18;
  wire U3_n_19;
  wire U3_n_2;
  wire U3_n_20;
  wire U3_n_21;
  wire U3_n_22;
  wire U3_n_23;
  wire U3_n_3;
  wire U3_n_4;
  wire U3_n_5;
  wire U3_n_6;
  wire U3_n_7;
  wire U3_n_8;
  wire U3_n_9;
  wire U4_n_0;
  wire U4_n_1;
  wire U4_n_17;
  wire U4_n_18;
  wire U4_n_19;
  wire U4_n_2;
  wire U4_n_20;
  wire U4_n_21;
  wire U4_n_22;
  wire U4_n_23;
  wire U4_n_3;
  wire U4_n_4;
  wire U4_n_5;
  wire U4_n_6;
  wire U4_n_7;
  wire U4_n_8;
  wire U4_n_9;
  wire U6_n_0;
  wire U6_n_1;
  wire U6_n_2;
  wire U6_n_3;
  wire U6_n_4;
  wire U6_n_5;
  wire U6_n_6;
  wire U6_n_7;
  wire [1:0]counter2;
  wire [6:0]digit_to_7seg;
  wire [6:0]digit_to_7seg_0;
  wire [6:0]seg_out;
  wire [6:0]seg_out_OBUF;
  wire [7:0]seg_select;
  wire [7:0]seg_select_OBUF;
  wire [2:1]NLW_U3_COUNT_reg_UNCONNECTED;
  wire [2:1]NLW_U4_COUNT_reg_UNCONNECTED;

  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  IBUF D1_IBUF_inst
       (.I(D1),
        .O(D1_IBUF));
  IBUF D2_IBUF_inst
       (.I(D2),
        .O(D2_IBUF));
  IBUF D3_IBUF_inst
       (.I(D3),
        .O(D3_IBUF));
  IBUF D4_IBUF_inst
       (.I(D4),
        .O(D4_IBUF));
  IBUF D5_IBUF_inst
       (.I(D5),
        .O(D5_IBUF));
  IBUF D6_IBUF_inst
       (.I(D6),
        .O(D6_IBUF));
  IBUF D7_IBUF_inst
       (.I(D7),
        .O(D7_IBUF));
  IBUF D8_IBUF_inst
       (.I(D8),
        .O(D8_IBUF));
  IBUF SELECT_IBUF_inst
       (.I(SELECT),
        .O(SELECT_IBUF));
  IBUF STOP_IBUF_inst
       (.I(STOP),
        .O(STOP_IBUF));
  IBUF Set_Impulse_IBUF_inst
       (.I(Set_Impulse),
        .O(Set_Impulse_IBUF));
  Decoder U13
       (.BUS4122(BUS4122),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .D(digit_to_7seg),
        .counter2(counter2),
        .\seg1_reg[6]_0 ({U3_n_0,U3_n_1,U3_n_2,U3_n_3,U3_n_4,U3_n_5,U3_n_6}),
        .\seg3_reg[0]_0 (U13_n_0),
        .\seg3_reg[1]_0 (U13_n_1),
        .\seg3_reg[2]_0 (U13_n_2),
        .\seg3_reg[3]_0 (U13_n_3),
        .\seg3_reg[4]_0 (U13_n_4),
        .\seg3_reg[5]_0 (U13_n_5),
        .\seg3_reg[6]_0 (U13_n_6),
        .\seg3_reg[6]_1 ({U3_n_17,U3_n_18,U3_n_19,U3_n_20,U3_n_21,U3_n_22,U3_n_23}));
  Decoder_0 U14
       (.BUS4100(BUS4100),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .D(digit_to_7seg_0),
        .counter2(counter2),
        .\seg1_reg[6]_0 ({U4_n_0,U4_n_1,U4_n_2,U4_n_3,U4_n_4,U4_n_5,U4_n_6}),
        .\seg3_reg[0]_0 (U14_n_0),
        .\seg3_reg[1]_0 (U14_n_1),
        .\seg3_reg[2]_0 (U14_n_2),
        .\seg3_reg[3]_0 (U14_n_3),
        .\seg3_reg[4]_0 (U14_n_4),
        .\seg3_reg[5]_0 (U14_n_5),
        .\seg3_reg[6]_0 (U14_n_6),
        .\seg3_reg[6]_1 ({U4_n_17,U4_n_18,U4_n_19,U4_n_20,U4_n_21,U4_n_22,U4_n_23}));
  Seven_seg_driver U15
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .Q(seg_out_OBUF),
        .\counter2_reg[1]_0 (counter2),
        .\seg_out_reg[0]_0 (U13_n_0),
        .\seg_out_reg[0]_1 (U14_n_0),
        .\seg_out_reg[1]_0 (U13_n_1),
        .\seg_out_reg[1]_1 (U14_n_1),
        .\seg_out_reg[2]_0 (U13_n_2),
        .\seg_out_reg[2]_1 (U14_n_2),
        .\seg_out_reg[3]_0 (U13_n_3),
        .\seg_out_reg[3]_1 (U14_n_3),
        .\seg_out_reg[4]_0 (U13_n_4),
        .\seg_out_reg[4]_1 (U14_n_4),
        .\seg_out_reg[5]_0 (U13_n_5),
        .\seg_out_reg[5]_1 (U14_n_5),
        .\seg_out_reg[6]_0 (U13_n_6),
        .\seg_out_reg[6]_1 (U14_n_6),
        .\seg_select_reg[7]_0 (seg_select_OBUF));
  Timer_Clock U3
       (.BUS4122(BUS4122),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .COUNT_reg({U3_n_7,NLW_U3_COUNT_reg_UNCONNECTED[2:1],U3_n_8}),
        .\COUNT_reg[0]_0 (U6_n_6),
        .\COUNT_reg[0]_1 (U6_n_7),
        .\COUNT_reg[0]_2 (U6_n_4),
        .\COUNT_reg[0]_3 (U6_n_5),
        .\COUNT_reg[2] ({U3_n_0,U3_n_1,U3_n_2,U3_n_3,U3_n_4,U3_n_5,U3_n_6}),
        .\COUNT_reg[2]_0 ({U3_n_17,U3_n_18,U3_n_19,U3_n_20,U3_n_21,U3_n_22,U3_n_23}),
        .\COUNT_reg[3]_0 (U3_n_9),
        .D(digit_to_7seg));
  Timer_Clock_1 U4
       (.BUS4100(BUS4100),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .COUNT_reg({U4_n_7,NLW_U4_COUNT_reg_UNCONNECTED[2:1],U4_n_8}),
        .\COUNT_reg[0]_0 (U6_n_2),
        .\COUNT_reg[0]_1 (U6_n_3),
        .\COUNT_reg[0]_2 (U6_n_0),
        .\COUNT_reg[0]_3 (U6_n_1),
        .\COUNT_reg[2] ({U4_n_0,U4_n_1,U4_n_2,U4_n_3,U4_n_4,U4_n_5,U4_n_6}),
        .\COUNT_reg[2]_0 ({U4_n_17,U4_n_18,U4_n_19,U4_n_20,U4_n_21,U4_n_22,U4_n_23}),
        .\COUNT_reg[3]_0 (U4_n_9),
        .D(digit_to_7seg_0));
  Switch U5
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .ENABLE1(ENABLE1),
        .ENABLE2(ENABLE2),
        .SELECT_IBUF(SELECT_IBUF),
        .STOP_IBUF(STOP_IBUF));
  Prescaler U6
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .COUNT_reg(U4_n_7),
        .\COUNT_reg[0]_0 (U4_n_9),
        .\COUNT_reg[0]_1 (U4_n_8),
        .\COUNT_reg[0]_2 (U3_n_7),
        .\COUNT_reg[0]_3 (U3_n_9),
        .\COUNT_reg[0]_4 (U3_n_8),
        .ENABLE1(ENABLE1),
        .ENABLE2(ENABLE2),
        .NET7768(NET7768),
        .NET7772(NET7772),
        .NET7776(NET7776),
        .NET7780(NET7780),
        .NET7784(NET7784),
        .NET7792(NET7792),
        .NET7800(NET7800),
        .NET7808(NET7808),
        .r_D1_reg(U6_n_7),
        .r_D2_reg(U6_n_6),
        .r_D3_reg(U6_n_5),
        .r_D4_reg(U6_n_4),
        .r_D5_reg(U6_n_3),
        .r_D6_reg(U6_n_2),
        .r_D7_reg(U6_n_1),
        .r_D8_reg(U6_n_0));
  Timer_Setter U8
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .D1_IBUF(D1_IBUF),
        .D2_IBUF(D2_IBUF),
        .D3_IBUF(D3_IBUF),
        .D4_IBUF(D4_IBUF),
        .D5_IBUF(D5_IBUF),
        .D6_IBUF(D6_IBUF),
        .D7_IBUF(D7_IBUF),
        .D8_IBUF(D8_IBUF),
        .NET7768(NET7768),
        .NET7772(NET7772),
        .NET7776(NET7776),
        .NET7780(NET7780),
        .NET7784(NET7784),
        .NET7792(NET7792),
        .NET7800(NET7800),
        .NET7808(NET7808),
        .STOP_IBUF(STOP_IBUF),
        .Set_Impulse_IBUF(Set_Impulse_IBUF));
  OBUF \seg_out_OBUF[0]_inst 
       (.I(seg_out_OBUF[0]),
        .O(seg_out[0]));
  OBUF \seg_out_OBUF[1]_inst 
       (.I(seg_out_OBUF[1]),
        .O(seg_out[1]));
  OBUF \seg_out_OBUF[2]_inst 
       (.I(seg_out_OBUF[2]),
        .O(seg_out[2]));
  OBUF \seg_out_OBUF[3]_inst 
       (.I(seg_out_OBUF[3]),
        .O(seg_out[3]));
  OBUF \seg_out_OBUF[4]_inst 
       (.I(seg_out_OBUF[4]),
        .O(seg_out[4]));
  OBUF \seg_out_OBUF[5]_inst 
       (.I(seg_out_OBUF[5]),
        .O(seg_out[5]));
  OBUF \seg_out_OBUF[6]_inst 
       (.I(seg_out_OBUF[6]),
        .O(seg_out[6]));
  OBUF \seg_select_OBUF[0]_inst 
       (.I(seg_select_OBUF[0]),
        .O(seg_select[0]));
  OBUF \seg_select_OBUF[1]_inst 
       (.I(seg_select_OBUF[1]),
        .O(seg_select[1]));
  OBUF \seg_select_OBUF[2]_inst 
       (.I(seg_select_OBUF[2]),
        .O(seg_select[2]));
  OBUF \seg_select_OBUF[3]_inst 
       (.I(seg_select_OBUF[3]),
        .O(seg_select[3]));
  OBUF \seg_select_OBUF[4]_inst 
       (.I(seg_select_OBUF[4]),
        .O(seg_select[4]));
  OBUF \seg_select_OBUF[5]_inst 
       (.I(seg_select_OBUF[5]),
        .O(seg_select[5]));
  OBUF \seg_select_OBUF[6]_inst 
       (.I(seg_select_OBUF[6]),
        .O(seg_select[6]));
  OBUF \seg_select_OBUF[7]_inst 
       (.I(seg_select_OBUF[7]),
        .O(seg_select[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
