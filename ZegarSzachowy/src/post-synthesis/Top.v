// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Dec 19 13:05:52 2024
// Host        : Vertigo running 64-bit major release  (build 9200)
// Command     : write_verilog -force Top.v
// Design      : Top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Counter
   (BUS4114,
    \COUNT[0]__0_i_2__0_0 ,
    \COUNT_reg[2]_0 ,
    CLK_IBUF_BUFG,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[2]__0_0 ,
    CLR_IBUF,
    \COUNT_reg[1]__0_0 ,
    \COUNT_reg[0]__0_0 ,
    Q);
  output [2:0]BUS4114;
  output \COUNT[0]__0_i_2__0_0 ;
  input \COUNT_reg[2]_0 ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[1]_0 ;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[2]__0_0 ;
  input CLR_IBUF;
  input \COUNT_reg[1]__0_0 ;
  input \COUNT_reg[0]__0_0 ;
  input [2:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]BUS4114;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]__0_i_2__0_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire \COUNT_reg[1]_0 ;
  wire \COUNT_reg[1]__0_0 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]__0_0 ;
  wire [2:0]Q;

  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[0]__0_i_2__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\COUNT[0]__0_i_2__0_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[0]_0 ),
        .Q(BUS4114[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[0]__0_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4114[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[1]_0 ),
        .Q(BUS4114[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(CLR_IBUF),
        .D(\COUNT_reg[1]__0_0 ),
        .Q(BUS4114[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[2]_0 ),
        .Q(BUS4114[2]),
        .R(\<const0> ));
  FDPE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[2]__0_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4114[2]));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_10
   (Q,
    \COUNT_reg[3]_0 ,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]__0_0 ,
    CLR_IBUF);
  output [3:0]Q;
  input [0:0]\COUNT_reg[3]_0 ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]__0_0 ;
  input CLR_IBUF;

  wire \<const0> ;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__2_n_0 ;
  wire \COUNT[1]_i_1__2_n_0 ;
  wire \COUNT[2]_i_1__2_n_0 ;
  wire \COUNT[3]_i_1_n_0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire [3:0]Q;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__2 
       (.I0(Q[0]),
        .O(\COUNT[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\COUNT[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFC02)) 
    \COUNT[2]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\COUNT[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\COUNT[3]_i_1_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[0]_i_1__2_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__2_n_0 ),
        .Q(Q[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDCE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[2]_i_1__2_n_0 ),
        .Q(Q[2]));
  FDRE \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDPE \COUNT_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[3]_i_1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[3]));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_2
   (Q,
    E,
    CLK_IBUF_BUFG,
    \COUNT_reg[3]__0_0 ,
    CLR_IBUF);
  output [3:0]Q;
  input [0:0]E;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[3]__0_0 ;
  input CLR_IBUF;

  wire \<const0> ;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__3_n_0 ;
  wire \COUNT[1]_i_1__3_n_0 ;
  wire \COUNT[2]_i_1__3_n_0 ;
  wire \COUNT[3]_i_1__2_n_0 ;
  wire \COUNT_reg[3]__0_0 ;
  wire [0:0]E;
  wire [3:0]Q;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__3 
       (.I0(Q[0]),
        .O(\COUNT[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\COUNT[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hFC02)) 
    \COUNT[2]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\COUNT[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(\COUNT[3]_i_1__2_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .D(\COUNT[0]_i_1__3_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__3_n_0 ),
        .Q(Q[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDCE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[2]_i_1__3_n_0 ),
        .Q(Q[2]));
  FDRE \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDPE \COUNT_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .D(\COUNT[3]_i_1__2_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[3]));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_3
   (\COUNT[3]__0_i_2__1_0 ,
    \COUNT[3]__0_i_3__1_0 ,
    UNCONN_OUT,
    BUS4114,
    Q,
    \COUNT_reg[3]_0 ,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]__0_0 ,
    CLR_IBUF);
  output \COUNT[3]__0_i_2__1_0 ;
  output \COUNT[3]__0_i_3__1_0 ;
  output [3:0]UNCONN_OUT;
  input [2:0]BUS4114;
  input [2:0]Q;
  input [0:0]\COUNT_reg[3]_0 ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]__0_0 ;
  input CLR_IBUF;

  wire \<const0> ;
  wire [2:0]BUS4114;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1__6_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire \COUNT[3]__0_i_2__1_0 ;
  wire \COUNT[3]__0_i_3__1_0 ;
  wire \COUNT[3]_i_1__4_n_0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire [2:0]Q;
  wire [3:0]UNCONN_OUT;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1 
       (.I0(UNCONN_OUT[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__6 
       (.I0(UNCONN_OUT[2]),
        .I1(UNCONN_OUT[3]),
        .I2(UNCONN_OUT[0]),
        .I3(UNCONN_OUT[1]),
        .O(\COUNT[1]_i_1__6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \COUNT[2]_i_1 
       (.I0(UNCONN_OUT[1]),
        .I1(UNCONN_OUT[0]),
        .I2(UNCONN_OUT[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[3]__0_i_2__1 
       (.I0(BUS4114[0]),
        .I1(BUS4114[2]),
        .I2(BUS4114[1]),
        .O(\COUNT[3]__0_i_2__1_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \COUNT[3]__0_i_3__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\COUNT[3]__0_i_3__1_0 ));
  LUT4 #(
    .INIT(16'hCCC8)) 
    \COUNT[3]_i_1__4 
       (.I0(UNCONN_OUT[2]),
        .I1(UNCONN_OUT[3]),
        .I2(UNCONN_OUT[0]),
        .I3(UNCONN_OUT[1]),
        .O(\COUNT[3]_i_1__4_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[0]_i_1_n_0 ),
        .Q(UNCONN_OUT[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(UNCONN_OUT[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[1]_i_1__6_n_0 ),
        .Q(UNCONN_OUT[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__6_n_0 ),
        .Q(UNCONN_OUT[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[2]_i_1_n_0 ),
        .Q(UNCONN_OUT[2]),
        .R(\<const0> ));
  FDPE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(UNCONN_OUT[2]));
  FDRE \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[3]_i_1__4_n_0 ),
        .Q(UNCONN_OUT[3]),
        .R(\<const0> ));
  FDCE \COUNT_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[3]_i_1__4_n_0 ),
        .Q(UNCONN_OUT[3]));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_4
   (Q,
    \COUNT_reg[3]_0 ,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]__0_0 ,
    CLR_IBUF);
  output [3:0]Q;
  input [0:0]\COUNT_reg[3]_0 ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]__0_0 ;
  input CLR_IBUF;

  wire \<const0> ;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__4_n_0 ;
  wire \COUNT[1]_i_1__4_n_0 ;
  wire \COUNT[2]_i_1__4_n_0 ;
  wire \COUNT[3]_i_1__0_n_0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire [3:0]Q;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__4 
       (.I0(Q[0]),
        .O(\COUNT[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\COUNT[1]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hFC02)) 
    \COUNT[2]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\COUNT[2]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\COUNT[3]_i_1__0_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[0]_i_1__4_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__4_n_0 ),
        .Q(Q[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDCE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[2]_i_1__4_n_0 ),
        .Q(Q[2]));
  FDRE \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDPE \COUNT_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[3]_i_1__0_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[3]));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_7
   (BUS4130,
    \COUNT[0]__0_i_2_0 ,
    \COUNT_reg[2]_0 ,
    CLK_IBUF_BUFG,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[2]__0_0 ,
    CLR_IBUF,
    \COUNT_reg[1]__0_0 ,
    \COUNT_reg[0]__0_0 ,
    Q);
  output [2:0]BUS4130;
  output \COUNT[0]__0_i_2_0 ;
  input \COUNT_reg[2]_0 ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[1]_0 ;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[2]__0_0 ;
  input CLR_IBUF;
  input \COUNT_reg[1]__0_0 ;
  input \COUNT_reg[0]__0_0 ;
  input [2:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]BUS4130;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]__0_i_2_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire \COUNT_reg[1]_0 ;
  wire \COUNT_reg[1]__0_0 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]__0_0 ;
  wire [2:0]Q;

  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[0]__0_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\COUNT[0]__0_i_2_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[0]_0 ),
        .Q(BUS4130[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[0]__0_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4130[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[1]_0 ),
        .Q(BUS4130[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(CLR_IBUF),
        .D(\COUNT_reg[1]__0_0 ),
        .Q(BUS4130[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[2]_0 ),
        .Q(BUS4130[2]),
        .R(\<const0> ));
  FDPE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\COUNT_reg[2]__0_0 ),
        .PRE(CLR_IBUF),
        .Q(BUS4130[2]));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_8
   (Q,
    E,
    CLK_IBUF_BUFG,
    \COUNT_reg[3]__0_0 ,
    CLR_IBUF);
  output [3:0]Q;
  input [0:0]E;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[3]__0_0 ;
  input CLR_IBUF;

  wire \<const0> ;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1__1_n_0 ;
  wire \COUNT[1]_i_1__1_n_0 ;
  wire \COUNT[2]_i_1__1_n_0 ;
  wire \COUNT[3]_i_1__1_n_0 ;
  wire \COUNT_reg[3]__0_0 ;
  wire [0:0]E;
  wire [3:0]Q;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__1 
       (.I0(Q[0]),
        .O(\COUNT[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\COUNT[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFC02)) 
    \COUNT[2]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\COUNT[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(\COUNT[3]_i_1__1_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .D(\COUNT[0]_i_1__1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDCE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDRE \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\COUNT[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDPE \COUNT_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]__0_0 ),
        .D(\COUNT[3]_i_1__1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(Q[3]));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_9
   (\COUNT[3]__0_i_2__0_0 ,
    \COUNT[3]__0_i_3__0_0 ,
    UNCONN_OUT,
    BUS4130,
    Q,
    \COUNT_reg[3]_0 ,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]__0_0 ,
    CLR_IBUF);
  output \COUNT[3]__0_i_2__0_0 ;
  output \COUNT[3]__0_i_3__0_0 ;
  output [3:0]UNCONN_OUT;
  input [2:0]BUS4130;
  input [2:0]Q;
  input [0:0]\COUNT_reg[3]_0 ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]__0_0 ;
  input CLR_IBUF;

  wire \<const0> ;
  wire [2:0]BUS4130;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1__5_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire \COUNT[3]__0_i_2__0_0 ;
  wire \COUNT[3]__0_i_3__0_0 ;
  wire \COUNT[3]_i_1__3_n_0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire [2:0]Q;
  wire [3:0]UNCONN_OUT;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1 
       (.I0(UNCONN_OUT[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__5 
       (.I0(UNCONN_OUT[2]),
        .I1(UNCONN_OUT[3]),
        .I2(UNCONN_OUT[0]),
        .I3(UNCONN_OUT[1]),
        .O(\COUNT[1]_i_1__5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \COUNT[2]_i_1 
       (.I0(UNCONN_OUT[1]),
        .I1(UNCONN_OUT[0]),
        .I2(UNCONN_OUT[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[3]__0_i_2__0 
       (.I0(BUS4130[0]),
        .I1(BUS4130[2]),
        .I2(BUS4130[1]),
        .O(\COUNT[3]__0_i_2__0_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \COUNT[3]__0_i_3__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\COUNT[3]__0_i_3__0_0 ));
  LUT4 #(
    .INIT(16'hCCC8)) 
    \COUNT[3]_i_1__3 
       (.I0(UNCONN_OUT[2]),
        .I1(UNCONN_OUT[3]),
        .I2(UNCONN_OUT[0]),
        .I3(UNCONN_OUT[1]),
        .O(\COUNT[3]_i_1__3_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[0]_i_1_n_0 ),
        .Q(UNCONN_OUT[0]),
        .R(\<const0> ));
  FDPE \COUNT_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(UNCONN_OUT[0]));
  FDRE \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[1]_i_1__5_n_0 ),
        .Q(UNCONN_OUT[1]),
        .R(\<const0> ));
  FDCE \COUNT_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[1]_i_1__5_n_0 ),
        .Q(UNCONN_OUT[1]));
  FDRE \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[2]_i_1_n_0 ),
        .Q(UNCONN_OUT[2]),
        .R(\<const0> ));
  FDPE \COUNT_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(CLR_IBUF),
        .Q(UNCONN_OUT[2]));
  FDRE \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[3]_i_1__3_n_0 ),
        .Q(UNCONN_OUT[3]),
        .R(\<const0> ));
  FDCE \COUNT_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]__0_0 ),
        .CLR(CLR_IBUF),
        .D(\COUNT[3]_i_1__3_n_0 ),
        .Q(UNCONN_OUT[3]));
  GND GND
       (.G(\<const0> ));
endmodule

module Decoder
   (\seg3_reg[6]_0 ,
    \seg3_reg[5]_0 ,
    \seg3_reg[4]_0 ,
    \seg3_reg[3]_0 ,
    \seg3_reg[2]_0 ,
    \seg3_reg[1]_0 ,
    \seg3_reg[0]_0 ,
    Q,
    BUS4114,
    \seg3_reg[5]_1 ,
    \seg_out_reg[6] ,
    CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    \seg2_reg[4]_0 );
  output \seg3_reg[6]_0 ;
  output \seg3_reg[5]_0 ;
  output \seg3_reg[4]_0 ;
  output \seg3_reg[3]_0 ;
  output \seg3_reg[2]_0 ;
  output \seg3_reg[1]_0 ;
  output \seg3_reg[0]_0 ;
  input [3:0]Q;
  input [2:0]BUS4114;
  input [3:0]\seg3_reg[5]_1 ;
  input [1:0]\seg_out_reg[6] ;
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input [3:0]\seg2_reg[4]_0 ;

  wire [2:0]BUS4114;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]Q;
  wire [6:0]digit_to_7seg;
  wire [6:0]digit_to_7seg0;
  wire [6:0]digit_to_7seg1;
  wire [6:0]digit_to_7seg2;
  wire [6:0]seg0;
  wire \seg0[2]_i_1__0_n_0 ;
  wire \seg0[3]_i_1__0_n_0 ;
  wire \seg0[4]_i_1__0_n_0 ;
  wire \seg0[5]_i_1__0_n_0 ;
  wire [6:0]seg1;
  wire [6:0]seg2;
  wire [3:0]\seg2_reg[4]_0 ;
  wire [6:0]seg3;
  wire \seg3_reg[0]_0 ;
  wire \seg3_reg[1]_0 ;
  wire \seg3_reg[2]_0 ;
  wire \seg3_reg[3]_0 ;
  wire \seg3_reg[4]_0 ;
  wire \seg3_reg[5]_0 ;
  wire [3:0]\seg3_reg[5]_1 ;
  wire \seg3_reg[6]_0 ;
  wire [1:0]\seg_out_reg[6] ;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \seg0[0]_i_1__0 
       (.I0(BUS4114[0]),
        .I1(BUS4114[1]),
        .I2(BUS4114[2]),
        .O(digit_to_7seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \seg0[1]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[0]),
        .I2(BUS4114[1]),
        .O(digit_to_7seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \seg0[2]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[1]),
        .I2(BUS4114[0]),
        .O(\seg0[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6D)) 
    \seg0[3]_i_1__0 
       (.I0(BUS4114[0]),
        .I1(BUS4114[1]),
        .I2(BUS4114[2]),
        .O(\seg0[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \seg0[4]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[1]),
        .I2(BUS4114[0]),
        .O(\seg0[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg0[5]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[0]),
        .I2(BUS4114[1]),
        .O(\seg0[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h7A)) 
    \seg0[6]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[0]),
        .I2(BUS4114[1]),
        .O(digit_to_7seg[6]));
  FDCE \seg0_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg[0]),
        .Q(seg0[0]));
  FDCE \seg0_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg[1]),
        .Q(seg0[1]));
  FDCE \seg0_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[2]_i_1__0_n_0 ),
        .Q(seg0[2]));
  FDCE \seg0_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[3]_i_1__0_n_0 ),
        .Q(seg0[3]));
  FDCE \seg0_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[4]_i_1__0_n_0 ),
        .Q(seg0[4]));
  FDCE \seg0_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[5]_i_1__0_n_0 ),
        .Q(seg0[5]));
  FDCE \seg0_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg[6]),
        .Q(seg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h545B)) 
    \seg1[0]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(digit_to_7seg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h059F)) 
    \seg1[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(digit_to_7seg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h554F)) 
    \seg1[2]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(digit_to_7seg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h116D)) 
    \seg1[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(digit_to_7seg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1013)) 
    \seg1[4]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(digit_to_7seg0[4]));
  LUT4 #(
    .INIT(16'h1523)) 
    \seg1[5]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(digit_to_7seg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \seg1[6]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(digit_to_7seg0[6]));
  FDCE \seg1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[0]),
        .Q(seg1[0]));
  FDCE \seg1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[1]),
        .Q(seg1[1]));
  FDCE \seg1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[2]),
        .Q(seg1[2]));
  FDCE \seg1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[3]),
        .Q(seg1[3]));
  FDCE \seg1_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[4]),
        .Q(seg1[4]));
  FDCE \seg1_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[5]),
        .Q(seg1[5]));
  FDCE \seg1_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[6]),
        .Q(seg1[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \seg2[0]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \seg2[1]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [1]),
        .I2(\seg2_reg[4]_0 [0]),
        .I3(\seg2_reg[4]_0 [2]),
        .O(digit_to_7seg1[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \seg2[2]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[2]));
  LUT4 #(
    .INIT(16'h1653)) 
    \seg2[3]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \seg2[4]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [1]),
        .I2(\seg2_reg[4]_0 [2]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \seg2[5]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \seg2[6]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [0]),
        .I2(\seg2_reg[4]_0 [2]),
        .I3(\seg2_reg[4]_0 [1]),
        .O(digit_to_7seg1[6]));
  FDCE \seg2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[0]),
        .Q(seg2[0]));
  FDCE \seg2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[1]),
        .Q(seg2[1]));
  FDCE \seg2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[2]),
        .Q(seg2[2]));
  FDCE \seg2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[3]),
        .Q(seg2[3]));
  FDCE \seg2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[4]),
        .Q(seg2[4]));
  FDCE \seg2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[5]),
        .Q(seg2[5]));
  FDCE \seg2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[6]),
        .Q(seg2[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h545B)) 
    \seg3[0]_i_1__0 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [1]),
        .I3(\seg3_reg[5]_1 [2]),
        .O(digit_to_7seg2[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h059F)) 
    \seg3[1]_i_1__0 
       (.I0(\seg3_reg[5]_1 [1]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [2]),
        .I3(\seg3_reg[5]_1 [3]),
        .O(digit_to_7seg2[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h554F)) 
    \seg3[2]_i_1__0 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [1]),
        .I3(\seg3_reg[5]_1 [2]),
        .O(digit_to_7seg2[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h116D)) 
    \seg3[3]_i_1__0 
       (.I0(\seg3_reg[5]_1 [2]),
        .I1(\seg3_reg[5]_1 [1]),
        .I2(\seg3_reg[5]_1 [0]),
        .I3(\seg3_reg[5]_1 [3]),
        .O(digit_to_7seg2[3]));
  LUT4 #(
    .INIT(16'h0053)) 
    \seg3[4]_i_1__0 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [2]),
        .I2(\seg3_reg[5]_1 [1]),
        .I3(\seg3_reg[5]_1 [0]),
        .O(digit_to_7seg2[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1523)) 
    \seg3[5]_i_1__0 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [1]),
        .I2(\seg3_reg[5]_1 [0]),
        .I3(\seg3_reg[5]_1 [2]),
        .O(digit_to_7seg2[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \seg3[6]_i_1__0 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [2]),
        .I3(\seg3_reg[5]_1 [1]),
        .O(digit_to_7seg2[6]));
  FDCE \seg3_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[0]),
        .Q(seg3[0]));
  FDCE \seg3_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[1]),
        .Q(seg3[1]));
  FDCE \seg3_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[2]),
        .Q(seg3[2]));
  FDCE \seg3_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[3]),
        .Q(seg3[3]));
  FDCE \seg3_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[4]),
        .Q(seg3[4]));
  FDCE \seg3_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[5]),
        .Q(seg3[5]));
  FDCE \seg3_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[6]),
        .Q(seg3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[0]_i_3 
       (.I0(seg3[0]),
        .I1(seg2[0]),
        .I2(\seg_out_reg[6] [1]),
        .I3(seg1[0]),
        .I4(\seg_out_reg[6] [0]),
        .I5(seg0[0]),
        .O(\seg3_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[1]_i_3 
       (.I0(seg3[1]),
        .I1(seg2[1]),
        .I2(\seg_out_reg[6] [1]),
        .I3(seg1[1]),
        .I4(\seg_out_reg[6] [0]),
        .I5(seg0[1]),
        .O(\seg3_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[2]_i_3 
       (.I0(seg3[2]),
        .I1(seg2[2]),
        .I2(\seg_out_reg[6] [1]),
        .I3(seg1[2]),
        .I4(\seg_out_reg[6] [0]),
        .I5(seg0[2]),
        .O(\seg3_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[3]_i_3 
       (.I0(seg3[3]),
        .I1(seg2[3]),
        .I2(\seg_out_reg[6] [1]),
        .I3(seg1[3]),
        .I4(\seg_out_reg[6] [0]),
        .I5(seg0[3]),
        .O(\seg3_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[4]_i_3 
       (.I0(seg3[4]),
        .I1(seg2[4]),
        .I2(\seg_out_reg[6] [1]),
        .I3(seg1[4]),
        .I4(\seg_out_reg[6] [0]),
        .I5(seg0[4]),
        .O(\seg3_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[5]_i_3 
       (.I0(seg3[5]),
        .I1(seg2[5]),
        .I2(\seg_out_reg[6] [1]),
        .I3(seg1[5]),
        .I4(\seg_out_reg[6] [0]),
        .I5(seg0[5]),
        .O(\seg3_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[6]_i_4 
       (.I0(seg3[6]),
        .I1(seg2[6]),
        .I2(\seg_out_reg[6] [1]),
        .I3(seg1[6]),
        .I4(\seg_out_reg[6] [0]),
        .I5(seg0[6]),
        .O(\seg3_reg[6]_0 ));
endmodule

(* ORIG_REF_NAME = "Decoder" *) 
module Decoder_1
   (\seg3_reg[6]_0 ,
    \seg3_reg[5]_0 ,
    \seg3_reg[4]_0 ,
    \seg3_reg[3]_0 ,
    \seg3_reg[2]_0 ,
    \seg3_reg[1]_0 ,
    \seg3_reg[0]_0 ,
    Q,
    BUS4130,
    \seg3_reg[5]_1 ,
    \seg_out_reg[6] ,
    CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    \seg2_reg[4]_0 );
  output \seg3_reg[6]_0 ;
  output \seg3_reg[5]_0 ;
  output \seg3_reg[4]_0 ;
  output \seg3_reg[3]_0 ;
  output \seg3_reg[2]_0 ;
  output \seg3_reg[1]_0 ;
  output \seg3_reg[0]_0 ;
  input [3:0]Q;
  input [2:0]BUS4130;
  input [3:0]\seg3_reg[5]_1 ;
  input [1:0]\seg_out_reg[6] ;
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input [3:0]\seg2_reg[4]_0 ;

  wire [2:0]BUS4130;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]Q;
  wire [6:0]digit_to_7seg;
  wire [6:0]digit_to_7seg0;
  wire [6:0]digit_to_7seg1;
  wire [6:0]digit_to_7seg2;
  wire \seg0[2]_i_1_n_0 ;
  wire \seg0[3]_i_1_n_0 ;
  wire \seg0[4]_i_1_n_0 ;
  wire \seg0[5]_i_1_n_0 ;
  wire \seg0_reg_n_0_[0] ;
  wire \seg0_reg_n_0_[1] ;
  wire \seg0_reg_n_0_[2] ;
  wire \seg0_reg_n_0_[3] ;
  wire \seg0_reg_n_0_[4] ;
  wire \seg0_reg_n_0_[5] ;
  wire \seg0_reg_n_0_[6] ;
  wire \seg1_reg_n_0_[0] ;
  wire \seg1_reg_n_0_[1] ;
  wire \seg1_reg_n_0_[2] ;
  wire \seg1_reg_n_0_[3] ;
  wire \seg1_reg_n_0_[4] ;
  wire \seg1_reg_n_0_[5] ;
  wire \seg1_reg_n_0_[6] ;
  wire [3:0]\seg2_reg[4]_0 ;
  wire \seg2_reg_n_0_[0] ;
  wire \seg2_reg_n_0_[1] ;
  wire \seg2_reg_n_0_[2] ;
  wire \seg2_reg_n_0_[3] ;
  wire \seg2_reg_n_0_[4] ;
  wire \seg2_reg_n_0_[5] ;
  wire \seg2_reg_n_0_[6] ;
  wire \seg3_reg[0]_0 ;
  wire \seg3_reg[1]_0 ;
  wire \seg3_reg[2]_0 ;
  wire \seg3_reg[3]_0 ;
  wire \seg3_reg[4]_0 ;
  wire \seg3_reg[5]_0 ;
  wire [3:0]\seg3_reg[5]_1 ;
  wire \seg3_reg[6]_0 ;
  wire \seg3_reg_n_0_[0] ;
  wire \seg3_reg_n_0_[1] ;
  wire \seg3_reg_n_0_[2] ;
  wire \seg3_reg_n_0_[3] ;
  wire \seg3_reg_n_0_[4] ;
  wire \seg3_reg_n_0_[5] ;
  wire \seg3_reg_n_0_[6] ;
  wire [1:0]\seg_out_reg[6] ;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \seg0[0]_i_1 
       (.I0(BUS4130[0]),
        .I1(BUS4130[1]),
        .I2(BUS4130[2]),
        .O(digit_to_7seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \seg0[1]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[0]),
        .I2(BUS4130[1]),
        .O(digit_to_7seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \seg0[2]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[1]),
        .I2(BUS4130[0]),
        .O(\seg0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h6D)) 
    \seg0[3]_i_1 
       (.I0(BUS4130[0]),
        .I1(BUS4130[1]),
        .I2(BUS4130[2]),
        .O(\seg0[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \seg0[4]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[1]),
        .I2(BUS4130[0]),
        .O(\seg0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg0[5]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[0]),
        .I2(BUS4130[1]),
        .O(\seg0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h7A)) 
    \seg0[6]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[0]),
        .I2(BUS4130[1]),
        .O(digit_to_7seg[6]));
  FDCE \seg0_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg[0]),
        .Q(\seg0_reg_n_0_[0] ));
  FDCE \seg0_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg[1]),
        .Q(\seg0_reg_n_0_[1] ));
  FDCE \seg0_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[2]_i_1_n_0 ),
        .Q(\seg0_reg_n_0_[2] ));
  FDCE \seg0_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[3]_i_1_n_0 ),
        .Q(\seg0_reg_n_0_[3] ));
  FDCE \seg0_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[4]_i_1_n_0 ),
        .Q(\seg0_reg_n_0_[4] ));
  FDCE \seg0_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\seg0[5]_i_1_n_0 ),
        .Q(\seg0_reg_n_0_[5] ));
  FDCE \seg0_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg[6]),
        .Q(\seg0_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h545B)) 
    \seg1[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(digit_to_7seg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h059F)) 
    \seg1[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(digit_to_7seg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h554F)) 
    \seg1[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(digit_to_7seg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h116D)) 
    \seg1[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(digit_to_7seg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1013)) 
    \seg1[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(digit_to_7seg0[4]));
  LUT4 #(
    .INIT(16'h1523)) 
    \seg1[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(digit_to_7seg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \seg1[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(digit_to_7seg0[6]));
  FDCE \seg1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[0]),
        .Q(\seg1_reg_n_0_[0] ));
  FDCE \seg1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[1]),
        .Q(\seg1_reg_n_0_[1] ));
  FDCE \seg1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[2]),
        .Q(\seg1_reg_n_0_[2] ));
  FDCE \seg1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[3]),
        .Q(\seg1_reg_n_0_[3] ));
  FDCE \seg1_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[4]),
        .Q(\seg1_reg_n_0_[4] ));
  FDCE \seg1_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[5]),
        .Q(\seg1_reg_n_0_[5] ));
  FDCE \seg1_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg0[6]),
        .Q(\seg1_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \seg2[0]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \seg2[1]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [1]),
        .I2(\seg2_reg[4]_0 [0]),
        .I3(\seg2_reg[4]_0 [2]),
        .O(digit_to_7seg1[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \seg2[2]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[2]));
  LUT4 #(
    .INIT(16'h1653)) 
    \seg2[3]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \seg2[4]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [1]),
        .I2(\seg2_reg[4]_0 [2]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \seg2[5]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [2]),
        .I2(\seg2_reg[4]_0 [1]),
        .I3(\seg2_reg[4]_0 [0]),
        .O(digit_to_7seg1[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \seg2[6]_i_1 
       (.I0(\seg2_reg[4]_0 [3]),
        .I1(\seg2_reg[4]_0 [0]),
        .I2(\seg2_reg[4]_0 [2]),
        .I3(\seg2_reg[4]_0 [1]),
        .O(digit_to_7seg1[6]));
  FDCE \seg2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[0]),
        .Q(\seg2_reg_n_0_[0] ));
  FDCE \seg2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[1]),
        .Q(\seg2_reg_n_0_[1] ));
  FDCE \seg2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[2]),
        .Q(\seg2_reg_n_0_[2] ));
  FDCE \seg2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[3]),
        .Q(\seg2_reg_n_0_[3] ));
  FDCE \seg2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[4]),
        .Q(\seg2_reg_n_0_[4] ));
  FDCE \seg2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[5]),
        .Q(\seg2_reg_n_0_[5] ));
  FDCE \seg2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg1[6]),
        .Q(\seg2_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h545B)) 
    \seg3[0]_i_1 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [1]),
        .I3(\seg3_reg[5]_1 [2]),
        .O(digit_to_7seg2[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h059F)) 
    \seg3[1]_i_1 
       (.I0(\seg3_reg[5]_1 [1]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [2]),
        .I3(\seg3_reg[5]_1 [3]),
        .O(digit_to_7seg2[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h554F)) 
    \seg3[2]_i_1 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [1]),
        .I3(\seg3_reg[5]_1 [2]),
        .O(digit_to_7seg2[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h116D)) 
    \seg3[3]_i_1 
       (.I0(\seg3_reg[5]_1 [2]),
        .I1(\seg3_reg[5]_1 [1]),
        .I2(\seg3_reg[5]_1 [0]),
        .I3(\seg3_reg[5]_1 [3]),
        .O(digit_to_7seg2[3]));
  LUT4 #(
    .INIT(16'h0053)) 
    \seg3[4]_i_1 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [2]),
        .I2(\seg3_reg[5]_1 [1]),
        .I3(\seg3_reg[5]_1 [0]),
        .O(digit_to_7seg2[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1523)) 
    \seg3[5]_i_1 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [1]),
        .I2(\seg3_reg[5]_1 [0]),
        .I3(\seg3_reg[5]_1 [2]),
        .O(digit_to_7seg2[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \seg3[6]_i_1 
       (.I0(\seg3_reg[5]_1 [3]),
        .I1(\seg3_reg[5]_1 [0]),
        .I2(\seg3_reg[5]_1 [2]),
        .I3(\seg3_reg[5]_1 [1]),
        .O(digit_to_7seg2[6]));
  FDCE \seg3_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[0]),
        .Q(\seg3_reg_n_0_[0] ));
  FDCE \seg3_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[1]),
        .Q(\seg3_reg_n_0_[1] ));
  FDCE \seg3_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[2]),
        .Q(\seg3_reg_n_0_[2] ));
  FDCE \seg3_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[3]),
        .Q(\seg3_reg_n_0_[3] ));
  FDCE \seg3_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[4]),
        .Q(\seg3_reg_n_0_[4] ));
  FDCE \seg3_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[5]),
        .Q(\seg3_reg_n_0_[5] ));
  FDCE \seg3_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(digit_to_7seg2[6]),
        .Q(\seg3_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[0]_i_2 
       (.I0(\seg3_reg_n_0_[0] ),
        .I1(\seg2_reg_n_0_[0] ),
        .I2(\seg_out_reg[6] [1]),
        .I3(\seg1_reg_n_0_[0] ),
        .I4(\seg_out_reg[6] [0]),
        .I5(\seg0_reg_n_0_[0] ),
        .O(\seg3_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[1]_i_2 
       (.I0(\seg3_reg_n_0_[1] ),
        .I1(\seg2_reg_n_0_[1] ),
        .I2(\seg_out_reg[6] [1]),
        .I3(\seg1_reg_n_0_[1] ),
        .I4(\seg_out_reg[6] [0]),
        .I5(\seg0_reg_n_0_[1] ),
        .O(\seg3_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[2]_i_2 
       (.I0(\seg3_reg_n_0_[2] ),
        .I1(\seg2_reg_n_0_[2] ),
        .I2(\seg_out_reg[6] [1]),
        .I3(\seg1_reg_n_0_[2] ),
        .I4(\seg_out_reg[6] [0]),
        .I5(\seg0_reg_n_0_[2] ),
        .O(\seg3_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[3]_i_2 
       (.I0(\seg3_reg_n_0_[3] ),
        .I1(\seg2_reg_n_0_[3] ),
        .I2(\seg_out_reg[6] [1]),
        .I3(\seg1_reg_n_0_[3] ),
        .I4(\seg_out_reg[6] [0]),
        .I5(\seg0_reg_n_0_[3] ),
        .O(\seg3_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[4]_i_2 
       (.I0(\seg3_reg_n_0_[4] ),
        .I1(\seg2_reg_n_0_[4] ),
        .I2(\seg_out_reg[6] [1]),
        .I3(\seg1_reg_n_0_[4] ),
        .I4(\seg_out_reg[6] [0]),
        .I5(\seg0_reg_n_0_[4] ),
        .O(\seg3_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[5]_i_2 
       (.I0(\seg3_reg_n_0_[5] ),
        .I1(\seg2_reg_n_0_[5] ),
        .I2(\seg_out_reg[6] [1]),
        .I3(\seg1_reg_n_0_[5] ),
        .I4(\seg_out_reg[6] [0]),
        .I5(\seg0_reg_n_0_[5] ),
        .O(\seg3_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[6]_i_3 
       (.I0(\seg3_reg_n_0_[6] ),
        .I1(\seg2_reg_n_0_[6] ),
        .I2(\seg_out_reg[6] [1]),
        .I3(\seg1_reg_n_0_[6] ),
        .I4(\seg_out_reg[6] [0]),
        .I5(\seg0_reg_n_0_[6] ),
        .O(\seg3_reg[6]_0 ));
endmodule

module Minute_counter
   (\COUNT[3]__0_i_2__1 ,
    Q,
    \COUNT[3]__0_i_3__1 ,
    UNCONN_OUT,
    BUS4114,
    \COUNT_reg[3] ,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]__0 ,
    CLR_IBUF,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[0]__0_0 );
  output \COUNT[3]__0_i_2__1 ;
  output [3:0]Q;
  output \COUNT[3]__0_i_3__1 ;
  output [3:0]UNCONN_OUT;
  input [2:0]BUS4114;
  input [0:0]\COUNT_reg[3] ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]__0 ;
  input CLR_IBUF;
  input [0:0]\COUNT_reg[3]_0 ;
  input \COUNT_reg[0]__0_0 ;

  wire [2:0]BUS4114;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[3]__0_i_2__1 ;
  wire \COUNT[3]__0_i_3__1 ;
  wire \COUNT_reg[0]__0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire [0:0]\COUNT_reg[3] ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire [3:0]Q;
  wire [3:0]UNCONN_OUT;

  Counter_3 tens_min
       (.BUS4114(BUS4114),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[3]__0_i_2__1_0 (\COUNT[3]__0_i_2__1 ),
        .\COUNT[3]__0_i_3__1_0 (\COUNT[3]__0_i_3__1 ),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0_0 ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_0 ),
        .Q(Q[2:0]),
        .UNCONN_OUT(UNCONN_OUT));
  Counter_4 unit_min
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0 ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3] ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Minute_counter" *) 
module Minute_counter_5
   (\COUNT[3]__0_i_2__0 ,
    Q,
    \COUNT[3]__0_i_3__0 ,
    UNCONN_OUT,
    BUS4130,
    \COUNT_reg[3] ,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]__0 ,
    CLR_IBUF,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[0]__0_0 );
  output \COUNT[3]__0_i_2__0 ;
  output [3:0]Q;
  output \COUNT[3]__0_i_3__0 ;
  output [3:0]UNCONN_OUT;
  input [2:0]BUS4130;
  input [0:0]\COUNT_reg[3] ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]__0 ;
  input CLR_IBUF;
  input [0:0]\COUNT_reg[3]_0 ;
  input \COUNT_reg[0]__0_0 ;

  wire [2:0]BUS4130;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[3]__0_i_2__0 ;
  wire \COUNT[3]__0_i_3__0 ;
  wire \COUNT_reg[0]__0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire [0:0]\COUNT_reg[3] ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire [3:0]Q;
  wire [3:0]UNCONN_OUT;

  Counter_9 tens_min
       (.BUS4130(BUS4130),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[3]__0_i_2__0_0 (\COUNT[3]__0_i_2__0 ),
        .\COUNT[3]__0_i_3__0_0 (\COUNT[3]__0_i_3__0 ),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0_0 ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_0 ),
        .Q(Q[2:0]),
        .UNCONN_OUT(UNCONN_OUT));
  Counter_10 unit_min
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0 ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3] ),
        .Q(Q));
endmodule

module Prescaler
   (\Divider_reg[17]_0 ,
    \Divider_reg[17]_1 ,
    En1_reg,
    \Divider_reg[17]_2 ,
    \Divider_reg[17]_3 ,
    En2_reg,
    En2_reg_0,
    \Divider_reg[17]_4 ,
    En1_reg_0,
    \Divider_reg[17]_5 ,
    En2_reg_1,
    En1_reg_1,
    BUS4130,
    \COUNT_reg[2]__0 ,
    \COUNT_reg[0]__0 ,
    Q,
    ENABLE1,
    BUS4114,
    \COUNT_reg[2]__0_0 ,
    \COUNT_reg[0]__0_0 ,
    \COUNT_reg[0]__0_1 ,
    ENABLE2,
    \COUNT_reg[0]__0_2 ,
    \COUNT_reg[0]__0_3 ,
    \COUNT_reg[0]__0_4 ,
    \COUNT_reg[0]__0_5 ,
    \COUNT_reg[0]__0_6 ,
    \COUNT_reg[0]__0_7 ,
    CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF);
  output \Divider_reg[17]_0 ;
  output \Divider_reg[17]_1 ;
  output En1_reg;
  output \Divider_reg[17]_2 ;
  output \Divider_reg[17]_3 ;
  output En2_reg;
  output En2_reg_0;
  output \Divider_reg[17]_4 ;
  output En1_reg_0;
  output \Divider_reg[17]_5 ;
  output En2_reg_1;
  output En1_reg_1;
  input [2:0]BUS4130;
  input \COUNT_reg[2]__0 ;
  input \COUNT_reg[0]__0 ;
  input [0:0]Q;
  input ENABLE1;
  input [2:0]BUS4114;
  input \COUNT_reg[2]__0_0 ;
  input \COUNT_reg[0]__0_0 ;
  input [0:0]\COUNT_reg[0]__0_1 ;
  input ENABLE2;
  input \COUNT_reg[0]__0_2 ;
  input \COUNT_reg[0]__0_3 ;
  input [0:0]\COUNT_reg[0]__0_4 ;
  input \COUNT_reg[0]__0_5 ;
  input \COUNT_reg[0]__0_6 ;
  input [0:0]\COUNT_reg[0]__0_7 ;
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;

  wire \<const0> ;
  wire [2:0]BUS4114;
  wire [2:0]BUS4130;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[3]__0_i_2_n_0 ;
  wire \COUNT[3]__0_i_3_n_0 ;
  wire \COUNT[3]__0_i_4_n_0 ;
  wire \COUNT[3]__0_i_5_n_0 ;
  wire \COUNT[3]__0_i_6_n_0 ;
  wire \COUNT[3]__0_i_7_n_0 ;
  wire \COUNT_reg[0]__0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire [0:0]\COUNT_reg[0]__0_1 ;
  wire \COUNT_reg[0]__0_2 ;
  wire \COUNT_reg[0]__0_3 ;
  wire [0:0]\COUNT_reg[0]__0_4 ;
  wire \COUNT_reg[0]__0_5 ;
  wire \COUNT_reg[0]__0_6 ;
  wire [0:0]\COUNT_reg[0]__0_7 ;
  wire \COUNT_reg[2]__0 ;
  wire \COUNT_reg[2]__0_0 ;
  wire [26:0]Divider;
  wire Divider0_carry__0_n_0;
  wire Divider0_carry__0_n_1;
  wire Divider0_carry__0_n_2;
  wire Divider0_carry__0_n_3;
  wire Divider0_carry__1_n_0;
  wire Divider0_carry__1_n_1;
  wire Divider0_carry__1_n_2;
  wire Divider0_carry__1_n_3;
  wire Divider0_carry__2_n_0;
  wire Divider0_carry__2_n_1;
  wire Divider0_carry__2_n_2;
  wire Divider0_carry__2_n_3;
  wire Divider0_carry__3_n_0;
  wire Divider0_carry__3_n_1;
  wire Divider0_carry__3_n_2;
  wire Divider0_carry__3_n_3;
  wire Divider0_carry__4_n_0;
  wire Divider0_carry__4_n_1;
  wire Divider0_carry__4_n_2;
  wire Divider0_carry__4_n_3;
  wire Divider0_carry__5_n_3;
  wire Divider0_carry_n_0;
  wire Divider0_carry_n_1;
  wire Divider0_carry_n_2;
  wire Divider0_carry_n_3;
  wire \Divider[26]_i_2_n_0 ;
  wire \Divider[26]_i_3_n_0 ;
  wire \Divider[26]_i_4_n_0 ;
  wire \Divider_reg[17]_0 ;
  wire \Divider_reg[17]_1 ;
  wire \Divider_reg[17]_2 ;
  wire \Divider_reg[17]_3 ;
  wire \Divider_reg[17]_4 ;
  wire \Divider_reg[17]_5 ;
  wire \Divider_reg_n_0_[0] ;
  wire \Divider_reg_n_0_[10] ;
  wire \Divider_reg_n_0_[11] ;
  wire \Divider_reg_n_0_[12] ;
  wire \Divider_reg_n_0_[13] ;
  wire \Divider_reg_n_0_[14] ;
  wire \Divider_reg_n_0_[15] ;
  wire \Divider_reg_n_0_[16] ;
  wire \Divider_reg_n_0_[17] ;
  wire \Divider_reg_n_0_[18] ;
  wire \Divider_reg_n_0_[19] ;
  wire \Divider_reg_n_0_[1] ;
  wire \Divider_reg_n_0_[20] ;
  wire \Divider_reg_n_0_[21] ;
  wire \Divider_reg_n_0_[22] ;
  wire \Divider_reg_n_0_[23] ;
  wire \Divider_reg_n_0_[24] ;
  wire \Divider_reg_n_0_[25] ;
  wire \Divider_reg_n_0_[26] ;
  wire \Divider_reg_n_0_[2] ;
  wire \Divider_reg_n_0_[3] ;
  wire \Divider_reg_n_0_[4] ;
  wire \Divider_reg_n_0_[5] ;
  wire \Divider_reg_n_0_[6] ;
  wire \Divider_reg_n_0_[7] ;
  wire \Divider_reg_n_0_[8] ;
  wire \Divider_reg_n_0_[9] ;
  wire ENABLE1;
  wire ENABLE2;
  wire En1_reg;
  wire En1_reg_0;
  wire En1_reg_1;
  wire En2_reg;
  wire En2_reg_0;
  wire En2_reg_1;
  wire [0:0]Q;
  wire [26:1]data0;

  LUT6 #(
    .INIT(64'hFFFFEFFF00001000)) 
    \COUNT[0]__0_i_1 
       (.I0(\COUNT_reg[0]__0 ),
        .I1(Q),
        .I2(ENABLE1),
        .I3(\COUNT[3]__0_i_3_n_0 ),
        .I4(\COUNT[3]__0_i_2_n_0 ),
        .I5(BUS4130[0]),
        .O(En1_reg));
  LUT6 #(
    .INIT(64'hFFFFEFFF00001000)) 
    \COUNT[0]__0_i_1__0 
       (.I0(\COUNT_reg[0]__0_0 ),
        .I1(\COUNT_reg[0]__0_1 ),
        .I2(ENABLE2),
        .I3(\COUNT[3]__0_i_3_n_0 ),
        .I4(\COUNT[3]__0_i_2_n_0 ),
        .I5(BUS4114[0]),
        .O(En2_reg));
  LUT6 #(
    .INIT(64'hFFFFFCFF00000200)) 
    \COUNT[1]__0_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[0]),
        .I2(\COUNT[3]__0_i_2_n_0 ),
        .I3(\COUNT[3]__0_i_3_n_0 ),
        .I4(\COUNT_reg[2]__0 ),
        .I5(BUS4130[1]),
        .O(\Divider_reg[17]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFCFF00000200)) 
    \COUNT[1]__0_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[0]),
        .I2(\COUNT[3]__0_i_2_n_0 ),
        .I3(\COUNT[3]__0_i_3_n_0 ),
        .I4(\COUNT_reg[2]__0_0 ),
        .I5(BUS4114[1]),
        .O(\Divider_reg[17]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \COUNT[2]__0_i_1 
       (.I0(BUS4130[1]),
        .I1(BUS4130[0]),
        .I2(\COUNT[3]__0_i_2_n_0 ),
        .I3(\COUNT[3]__0_i_3_n_0 ),
        .I4(\COUNT_reg[2]__0 ),
        .I5(BUS4130[2]),
        .O(\Divider_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \COUNT[2]__0_i_1__0 
       (.I0(BUS4114[1]),
        .I1(BUS4114[0]),
        .I2(\COUNT[3]__0_i_2_n_0 ),
        .I3(\COUNT[3]__0_i_3_n_0 ),
        .I4(\COUNT_reg[2]__0_0 ),
        .I5(BUS4114[2]),
        .O(\Divider_reg[17]_2 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \COUNT[3]__0_i_1 
       (.I0(\COUNT_reg[2]__0_0 ),
        .I1(\COUNT_reg[0]__0_2 ),
        .I2(\COUNT[3]__0_i_3_n_0 ),
        .I3(\COUNT[3]__0_i_2_n_0 ),
        .I4(\COUNT_reg[0]__0_3 ),
        .I5(\COUNT_reg[0]__0_4 ),
        .O(En2_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \COUNT[3]__0_i_1__0 
       (.I0(\COUNT[3]__0_i_2_n_0 ),
        .I1(\COUNT[3]__0_i_3_n_0 ),
        .I2(BUS4114[0]),
        .I3(BUS4114[2]),
        .I4(BUS4114[1]),
        .I5(\COUNT_reg[2]__0_0 ),
        .O(\Divider_reg[17]_4 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \COUNT[3]__0_i_1__1 
       (.I0(\COUNT_reg[2]__0 ),
        .I1(\COUNT_reg[0]__0_5 ),
        .I2(\COUNT[3]__0_i_3_n_0 ),
        .I3(\COUNT[3]__0_i_2_n_0 ),
        .I4(\COUNT_reg[0]__0_6 ),
        .I5(\COUNT_reg[0]__0_7 ),
        .O(En1_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \COUNT[3]__0_i_1__2 
       (.I0(\COUNT[3]__0_i_2_n_0 ),
        .I1(\COUNT[3]__0_i_3_n_0 ),
        .I2(BUS4130[0]),
        .I3(BUS4130[2]),
        .I4(BUS4130[1]),
        .I5(\COUNT_reg[2]__0 ),
        .O(\Divider_reg[17]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \COUNT[3]__0_i_1__3 
       (.I0(\COUNT[3]__0_i_2_n_0 ),
        .I1(\COUNT[3]__0_i_3_n_0 ),
        .I2(ENABLE2),
        .O(En2_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \COUNT[3]__0_i_1__4 
       (.I0(\COUNT[3]__0_i_2_n_0 ),
        .I1(\COUNT[3]__0_i_3_n_0 ),
        .I2(ENABLE1),
        .O(En1_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \COUNT[3]__0_i_2 
       (.I0(\Divider[26]_i_4_n_0 ),
        .I1(\Divider_reg_n_0_[17] ),
        .I2(\Divider_reg_n_0_[8] ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(CE_IBUF),
        .I5(\Divider[26]_i_2_n_0 ),
        .O(\COUNT[3]__0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \COUNT[3]__0_i_3 
       (.I0(\COUNT[3]__0_i_4_n_0 ),
        .I1(\COUNT[3]__0_i_5_n_0 ),
        .I2(\COUNT[3]__0_i_6_n_0 ),
        .I3(\COUNT[3]__0_i_7_n_0 ),
        .O(\COUNT[3]__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[3]__0_i_4 
       (.I0(\Divider_reg_n_0_[14] ),
        .I1(\Divider_reg_n_0_[1] ),
        .I2(\Divider_reg_n_0_[24] ),
        .I3(\Divider_reg_n_0_[5] ),
        .O(\COUNT[3]__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \COUNT[3]__0_i_5 
       (.I0(\Divider_reg_n_0_[19] ),
        .I1(\Divider_reg_n_0_[26] ),
        .I2(\Divider_reg_n_0_[21] ),
        .I3(\Divider_reg_n_0_[2] ),
        .O(\COUNT[3]__0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \COUNT[3]__0_i_6 
       (.I0(\Divider_reg_n_0_[11] ),
        .I1(\Divider_reg_n_0_[10] ),
        .I2(\Divider_reg_n_0_[23] ),
        .I3(\Divider_reg_n_0_[4] ),
        .O(\COUNT[3]__0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[3]__0_i_7 
       (.I0(\Divider_reg_n_0_[13] ),
        .I1(\Divider_reg_n_0_[0] ),
        .I2(\Divider_reg_n_0_[22] ),
        .I3(\Divider_reg_n_0_[3] ),
        .O(\COUNT[3]__0_i_7_n_0 ));
  CARRY4 Divider0_carry
       (.CI(\<const0> ),
        .CO({Divider0_carry_n_0,Divider0_carry_n_1,Divider0_carry_n_2,Divider0_carry_n_3}),
        .CYINIT(\Divider_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S({\Divider_reg_n_0_[4] ,\Divider_reg_n_0_[3] ,\Divider_reg_n_0_[2] ,\Divider_reg_n_0_[1] }));
  CARRY4 Divider0_carry__0
       (.CI(Divider0_carry_n_0),
        .CO({Divider0_carry__0_n_0,Divider0_carry__0_n_1,Divider0_carry__0_n_2,Divider0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S({\Divider_reg_n_0_[8] ,\Divider_reg_n_0_[7] ,\Divider_reg_n_0_[6] ,\Divider_reg_n_0_[5] }));
  CARRY4 Divider0_carry__1
       (.CI(Divider0_carry__0_n_0),
        .CO({Divider0_carry__1_n_0,Divider0_carry__1_n_1,Divider0_carry__1_n_2,Divider0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S({\Divider_reg_n_0_[12] ,\Divider_reg_n_0_[11] ,\Divider_reg_n_0_[10] ,\Divider_reg_n_0_[9] }));
  CARRY4 Divider0_carry__2
       (.CI(Divider0_carry__1_n_0),
        .CO({Divider0_carry__2_n_0,Divider0_carry__2_n_1,Divider0_carry__2_n_2,Divider0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S({\Divider_reg_n_0_[16] ,\Divider_reg_n_0_[15] ,\Divider_reg_n_0_[14] ,\Divider_reg_n_0_[13] }));
  CARRY4 Divider0_carry__3
       (.CI(Divider0_carry__2_n_0),
        .CO({Divider0_carry__3_n_0,Divider0_carry__3_n_1,Divider0_carry__3_n_2,Divider0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S({\Divider_reg_n_0_[20] ,\Divider_reg_n_0_[19] ,\Divider_reg_n_0_[18] ,\Divider_reg_n_0_[17] }));
  CARRY4 Divider0_carry__4
       (.CI(Divider0_carry__3_n_0),
        .CO({Divider0_carry__4_n_0,Divider0_carry__4_n_1,Divider0_carry__4_n_2,Divider0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S({\Divider_reg_n_0_[24] ,\Divider_reg_n_0_[23] ,\Divider_reg_n_0_[22] ,\Divider_reg_n_0_[21] }));
  CARRY4 Divider0_carry__5
       (.CI(Divider0_carry__4_n_0),
        .CO(Divider0_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[26:25]),
        .S({\<const0> ,\<const0> ,\Divider_reg_n_0_[26] ,\Divider_reg_n_0_[25] }));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Divider[0]_i_1 
       (.I0(\Divider_reg_n_0_[0] ),
        .O(Divider[0]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[10]_i_1 
       (.I0(data0[10]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[10]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[11]_i_1 
       (.I0(data0[11]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[11]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[12]_i_1 
       (.I0(data0[12]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[12]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[13]_i_1 
       (.I0(data0[13]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[13]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[14]_i_1 
       (.I0(data0[14]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[14]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[15]_i_1 
       (.I0(data0[15]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[15]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[16]_i_1 
       (.I0(data0[16]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[16]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[17]_i_1 
       (.I0(data0[17]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[17]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[18]_i_1 
       (.I0(data0[18]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[18]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[19]_i_1 
       (.I0(data0[19]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[19]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[1]_i_1 
       (.I0(data0[1]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[1]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[20]_i_1 
       (.I0(data0[20]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[20]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[21]_i_1 
       (.I0(data0[21]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[21]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[22]_i_1 
       (.I0(data0[22]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[22]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[23]_i_1 
       (.I0(data0[23]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[23]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[24]_i_1 
       (.I0(data0[24]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[24]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[25]_i_1 
       (.I0(data0[25]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[25]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[26]_i_1 
       (.I0(data0[26]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[26]));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \Divider[26]_i_2 
       (.I0(\Divider_reg_n_0_[16] ),
        .I1(\Divider_reg_n_0_[7] ),
        .I2(\Divider_reg_n_0_[18] ),
        .I3(\Divider_reg_n_0_[9] ),
        .O(\Divider[26]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Divider[26]_i_3 
       (.I0(\Divider_reg_n_0_[8] ),
        .I1(\Divider_reg_n_0_[17] ),
        .O(\Divider[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \Divider[26]_i_4 
       (.I0(\Divider_reg_n_0_[15] ),
        .I1(\Divider_reg_n_0_[6] ),
        .I2(\Divider_reg_n_0_[12] ),
        .I3(\Divider_reg_n_0_[25] ),
        .O(\Divider[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[2]_i_1 
       (.I0(data0[2]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[2]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[3]_i_1 
       (.I0(data0[3]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[3]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[4]_i_1 
       (.I0(data0[4]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[4]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[5]_i_1 
       (.I0(data0[5]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[5]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[6]_i_1 
       (.I0(data0[6]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[6]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[7]_i_1 
       (.I0(data0[7]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[7]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[8]_i_1 
       (.I0(data0[8]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[8]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \Divider[9]_i_1 
       (.I0(data0[9]),
        .I1(\Divider[26]_i_2_n_0 ),
        .I2(\Divider[26]_i_3_n_0 ),
        .I3(\Divider_reg_n_0_[20] ),
        .I4(\Divider[26]_i_4_n_0 ),
        .I5(\COUNT[3]__0_i_3_n_0 ),
        .O(Divider[9]));
  FDCE \Divider_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[0]),
        .Q(\Divider_reg_n_0_[0] ));
  FDCE \Divider_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[10]),
        .Q(\Divider_reg_n_0_[10] ));
  FDCE \Divider_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[11]),
        .Q(\Divider_reg_n_0_[11] ));
  FDCE \Divider_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[12]),
        .Q(\Divider_reg_n_0_[12] ));
  FDCE \Divider_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[13]),
        .Q(\Divider_reg_n_0_[13] ));
  FDCE \Divider_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[14]),
        .Q(\Divider_reg_n_0_[14] ));
  FDCE \Divider_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[15]),
        .Q(\Divider_reg_n_0_[15] ));
  FDCE \Divider_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[16]),
        .Q(\Divider_reg_n_0_[16] ));
  FDCE \Divider_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[17]),
        .Q(\Divider_reg_n_0_[17] ));
  FDCE \Divider_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[18]),
        .Q(\Divider_reg_n_0_[18] ));
  FDCE \Divider_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[19]),
        .Q(\Divider_reg_n_0_[19] ));
  FDCE \Divider_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[1]),
        .Q(\Divider_reg_n_0_[1] ));
  FDCE \Divider_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[20]),
        .Q(\Divider_reg_n_0_[20] ));
  FDCE \Divider_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[21]),
        .Q(\Divider_reg_n_0_[21] ));
  FDCE \Divider_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[22]),
        .Q(\Divider_reg_n_0_[22] ));
  FDCE \Divider_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[23]),
        .Q(\Divider_reg_n_0_[23] ));
  FDCE \Divider_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[24]),
        .Q(\Divider_reg_n_0_[24] ));
  FDCE \Divider_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[25]),
        .Q(\Divider_reg_n_0_[25] ));
  FDCE \Divider_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[26]),
        .Q(\Divider_reg_n_0_[26] ));
  FDCE \Divider_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[2]),
        .Q(\Divider_reg_n_0_[2] ));
  FDCE \Divider_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[3]),
        .Q(\Divider_reg_n_0_[3] ));
  FDCE \Divider_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[4]),
        .Q(\Divider_reg_n_0_[4] ));
  FDCE \Divider_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[5]),
        .Q(\Divider_reg_n_0_[5] ));
  FDCE \Divider_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[6]),
        .Q(\Divider_reg_n_0_[6] ));
  FDCE \Divider_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[7]),
        .Q(\Divider_reg_n_0_[7] ));
  FDCE \Divider_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[8]),
        .Q(\Divider_reg_n_0_[8] ));
  FDCE \Divider_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(Divider[9]),
        .Q(\Divider_reg_n_0_[9] ));
  GND GND
       (.G(\<const0> ));
endmodule

module Second_counter
   (BUS4114,
    Q,
    \COUNT[0]__0_i_2__0 ,
    \COUNT_reg[2] ,
    CLK_IBUF_BUFG,
    \COUNT_reg[1] ,
    \COUNT_reg[0] ,
    \COUNT_reg[2]__0 ,
    CLR_IBUF,
    \COUNT_reg[1]__0 ,
    \COUNT_reg[0]__0 ,
    E,
    \COUNT_reg[3]__0 );
  output [2:0]BUS4114;
  output [3:0]Q;
  output \COUNT[0]__0_i_2__0 ;
  input \COUNT_reg[2] ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[1] ;
  input \COUNT_reg[0] ;
  input \COUNT_reg[2]__0 ;
  input CLR_IBUF;
  input \COUNT_reg[1]__0 ;
  input \COUNT_reg[0]__0 ;
  input [0:0]E;
  input \COUNT_reg[3]__0 ;

  wire [2:0]BUS4114;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]__0_i_2__0 ;
  wire \COUNT_reg[0] ;
  wire \COUNT_reg[0]__0 ;
  wire \COUNT_reg[1] ;
  wire \COUNT_reg[1]__0 ;
  wire \COUNT_reg[2] ;
  wire \COUNT_reg[2]__0 ;
  wire \COUNT_reg[3]__0 ;
  wire [0:0]E;
  wire [3:0]Q;

  Counter tens_sec
       (.BUS4114(BUS4114),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[0]__0_i_2__0_0 (\COUNT[0]__0_i_2__0 ),
        .\COUNT_reg[0]_0 (\COUNT_reg[0] ),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0 ),
        .\COUNT_reg[1]_0 (\COUNT_reg[1] ),
        .\COUNT_reg[1]__0_0 (\COUNT_reg[1]__0 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[2]__0_0 (\COUNT_reg[2]__0 ),
        .Q(Q[2:0]));
  Counter_2 unit_sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[3]__0_0 (\COUNT_reg[3]__0 ),
        .E(E),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Second_counter" *) 
module Second_counter_6
   (BUS4130,
    Q,
    \COUNT[0]__0_i_2 ,
    \COUNT_reg[2] ,
    CLK_IBUF_BUFG,
    \COUNT_reg[1] ,
    \COUNT_reg[0] ,
    \COUNT_reg[2]__0 ,
    CLR_IBUF,
    \COUNT_reg[1]__0 ,
    \COUNT_reg[0]__0 ,
    E,
    \COUNT_reg[3]__0 );
  output [2:0]BUS4130;
  output [3:0]Q;
  output \COUNT[0]__0_i_2 ;
  input \COUNT_reg[2] ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[1] ;
  input \COUNT_reg[0] ;
  input \COUNT_reg[2]__0 ;
  input CLR_IBUF;
  input \COUNT_reg[1]__0 ;
  input \COUNT_reg[0]__0 ;
  input [0:0]E;
  input \COUNT_reg[3]__0 ;

  wire [2:0]BUS4130;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]__0_i_2 ;
  wire \COUNT_reg[0] ;
  wire \COUNT_reg[0]__0 ;
  wire \COUNT_reg[1] ;
  wire \COUNT_reg[1]__0 ;
  wire \COUNT_reg[2] ;
  wire \COUNT_reg[2]__0 ;
  wire \COUNT_reg[3]__0 ;
  wire [0:0]E;
  wire [3:0]Q;

  Counter_7 tens_sec
       (.BUS4130(BUS4130),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[0]__0_i_2_0 (\COUNT[0]__0_i_2 ),
        .\COUNT_reg[0]_0 (\COUNT_reg[0] ),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0 ),
        .\COUNT_reg[1]_0 (\COUNT_reg[1] ),
        .\COUNT_reg[1]__0_0 (\COUNT_reg[1]__0 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[2]__0_0 (\COUNT_reg[2]__0 ),
        .Q(Q[2:0]));
  Counter_8 unit_sec
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[3]__0_0 (\COUNT_reg[3]__0 ),
        .E(E),
        .Q(Q));
endmodule

module Seven_seg_driver
   (Q,
    \seg_out_reg[6]_0 ,
    \seg_select_reg[7]_0 ,
    CLR_IBUF,
    CE_IBUF,
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
    \seg_out_reg[6]_1 ,
    \seg_out_reg[6]_2 ,
    CLK_IBUF_BUFG);
  output [1:0]Q;
  output [6:0]\seg_out_reg[6]_0 ;
  output [7:0]\seg_select_reg[7]_0 ;
  input CLR_IBUF;
  input CE_IBUF;
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
  input \seg_out_reg[6]_1 ;
  input \seg_out_reg[6]_2 ;
  input CLK_IBUF_BUFG;

  wire \<const0> ;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [1:0]Q;
  wire counter1;
  wire [3:0]counter1_reg;
  wire counter2;
  wire \counter2[0]_i_1_n_0 ;
  wire [3:3]counter2_reg;
  wire [2:2]counter2_reg__0;
  wire [3:0]p_0_in;
  wire [3:1]p_0_in__0;
  wire \seg_out[0]_i_1_n_0 ;
  wire \seg_out[1]_i_1_n_0 ;
  wire \seg_out[2]_i_1_n_0 ;
  wire \seg_out[3]_i_1_n_0 ;
  wire \seg_out[4]_i_1_n_0 ;
  wire \seg_out[5]_i_1_n_0 ;
  wire \seg_out[6]_i_1_n_0 ;
  wire \seg_out[6]_i_2_n_0 ;
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
  wire [6:0]\seg_out_reg[6]_0 ;
  wire \seg_out_reg[6]_1 ;
  wire \seg_out_reg[6]_2 ;
  wire \seg_select[0]_i_1_n_0 ;
  wire \seg_select[1]_i_1_n_0 ;
  wire \seg_select[2]_i_1_n_0 ;
  wire \seg_select[3]_i_1_n_0 ;
  wire \seg_select[4]_i_1_n_0 ;
  wire \seg_select[5]_i_1_n_0 ;
  wire \seg_select[6]_i_1_n_0 ;
  wire \seg_select[7]_i_1_n_0 ;
  wire [7:0]\seg_select_reg[7]_0 ;

  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[0]_i_1 
       (.I0(counter1_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter1[1]_i_1 
       (.I0(counter1_reg[0]),
        .I1(counter1_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1[2]_i_1 
       (.I0(counter1_reg[0]),
        .I1(counter1_reg[1]),
        .I2(counter1_reg[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter1[3]_i_1 
       (.I0(CE_IBUF),
        .I1(CLR_IBUF),
        .O(counter1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter1[3]_i_2 
       (.I0(counter1_reg[3]),
        .I1(counter1_reg[0]),
        .I2(counter1_reg[1]),
        .I3(counter1_reg[2]),
        .O(p_0_in[3]));
  FDRE \counter1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter1),
        .D(p_0_in[0]),
        .Q(counter1_reg[0]),
        .R(\<const0> ));
  FDRE \counter1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter1),
        .D(p_0_in[1]),
        .Q(counter1_reg[1]),
        .R(\<const0> ));
  FDRE \counter1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter1),
        .D(p_0_in[2]),
        .Q(counter1_reg[2]),
        .R(\<const0> ));
  FDRE \counter1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter1),
        .D(p_0_in[3]),
        .Q(counter1_reg[3]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[0]_i_1 
       (.I0(Q[0]),
        .O(\counter2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter2[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter2[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter2_reg__0),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \counter2[3]_i_1 
       (.I0(CLR_IBUF),
        .I1(CE_IBUF),
        .I2(counter1_reg[2]),
        .I3(counter1_reg[1]),
        .I4(counter1_reg[0]),
        .I5(counter1_reg[3]),
        .O(counter2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter2[3]_i_2 
       (.I0(counter2_reg),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(counter2_reg__0),
        .O(p_0_in__0[3]));
  FDRE \counter2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter2),
        .D(\counter2[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \counter2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter2),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \counter2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter2),
        .D(p_0_in__0[2]),
        .Q(counter2_reg__0),
        .R(\<const0> ));
  FDRE \counter2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(counter2),
        .D(p_0_in__0[3]),
        .Q(counter2_reg),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h3202)) 
    \seg_out[0]_i_1 
       (.I0(\seg_out_reg[0]_0 ),
        .I1(counter2_reg),
        .I2(counter2_reg__0),
        .I3(\seg_out_reg[0]_1 ),
        .O(\seg_out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \seg_out[1]_i_1 
       (.I0(\seg_out_reg[1]_0 ),
        .I1(counter2_reg),
        .I2(counter2_reg__0),
        .I3(\seg_out_reg[1]_1 ),
        .O(\seg_out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \seg_out[2]_i_1 
       (.I0(\seg_out_reg[2]_0 ),
        .I1(counter2_reg),
        .I2(counter2_reg__0),
        .I3(\seg_out_reg[2]_1 ),
        .O(\seg_out[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \seg_out[3]_i_1 
       (.I0(\seg_out_reg[3]_0 ),
        .I1(counter2_reg),
        .I2(counter2_reg__0),
        .I3(\seg_out_reg[3]_1 ),
        .O(\seg_out[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \seg_out[4]_i_1 
       (.I0(\seg_out_reg[4]_0 ),
        .I1(counter2_reg),
        .I2(counter2_reg__0),
        .I3(\seg_out_reg[4]_1 ),
        .O(\seg_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \seg_out[5]_i_1 
       (.I0(\seg_out_reg[5]_0 ),
        .I1(counter2_reg),
        .I2(counter2_reg__0),
        .I3(\seg_out_reg[5]_1 ),
        .O(\seg_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \seg_out[6]_i_1 
       (.I0(CE_IBUF),
        .I1(counter1_reg[2]),
        .I2(counter1_reg[1]),
        .I3(counter1_reg[0]),
        .I4(counter1_reg[3]),
        .O(\seg_out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \seg_out[6]_i_2 
       (.I0(\seg_out_reg[6]_1 ),
        .I1(counter2_reg),
        .I2(counter2_reg__0),
        .I3(\seg_out_reg[6]_2 ),
        .O(\seg_out[6]_i_2_n_0 ));
  FDCE \seg_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_out[0]_i_1_n_0 ),
        .Q(\seg_out_reg[6]_0 [0]));
  FDCE \seg_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_out[1]_i_1_n_0 ),
        .Q(\seg_out_reg[6]_0 [1]));
  FDCE \seg_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_out[2]_i_1_n_0 ),
        .Q(\seg_out_reg[6]_0 [2]));
  FDCE \seg_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_out[3]_i_1_n_0 ),
        .Q(\seg_out_reg[6]_0 [3]));
  FDCE \seg_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_out[4]_i_1_n_0 ),
        .Q(\seg_out_reg[6]_0 [4]));
  FDCE \seg_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_out[5]_i_1_n_0 ),
        .Q(\seg_out_reg[6]_0 [5]));
  FDCE \seg_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_out[6]_i_2_n_0 ),
        .Q(\seg_out_reg[6]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \seg_select[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter2_reg),
        .I3(counter2_reg__0),
        .O(\seg_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \seg_select[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter2_reg),
        .I3(counter2_reg__0),
        .O(\seg_select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \seg_select[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter2_reg),
        .I3(counter2_reg__0),
        .O(\seg_select[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \seg_select[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter2_reg),
        .I3(counter2_reg__0),
        .O(\seg_select[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \seg_select[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter2_reg__0),
        .I3(counter2_reg),
        .O(\seg_select[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \seg_select[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter2_reg__0),
        .I3(counter2_reg),
        .O(\seg_select[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \seg_select[6]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter2_reg__0),
        .I3(counter2_reg),
        .O(\seg_select[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \seg_select[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter2_reg__0),
        .I3(counter2_reg),
        .O(\seg_select[7]_i_1_n_0 ));
  FDCE \seg_select_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[0]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [0]));
  FDCE \seg_select_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[1]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [1]));
  FDCE \seg_select_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[2]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [2]));
  FDCE \seg_select_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[3]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [3]));
  FDCE \seg_select_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[4]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [4]));
  FDCE \seg_select_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[5]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [5]));
  FDCE \seg_select_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[6]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [6]));
  FDCE \seg_select_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(CLR_IBUF),
        .D(\seg_select[7]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [7]));
endmodule

module Switch
   (ENABLE1,
    ENABLE2,
    En1_reg_0,
    En2_reg_0,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    SELECT_IBUF,
    CE_IBUF,
    STOP_IBUF,
    Q,
    \COUNT_reg[2]__0 );
  output ENABLE1;
  output ENABLE2;
  output En1_reg_0;
  output En2_reg_0;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input SELECT_IBUF;
  input CE_IBUF;
  input STOP_IBUF;
  input [3:0]Q;
  input [3:0]\COUNT_reg[2]__0 ;

  wire \<const1> ;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]\COUNT_reg[2]__0 ;
  wire ENABLE1;
  wire ENABLE2;
  wire En1;
  wire En1_reg_0;
  wire En2;
  wire En2_reg_0;
  wire [3:0]Q;
  wire SELECT_IBUF;
  wire STOP_IBUF;

  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \COUNT[2]__0_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(ENABLE1),
        .O(En1_reg_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \COUNT[2]__0_i_2__0 
       (.I0(\COUNT_reg[2]__0 [0]),
        .I1(\COUNT_reg[2]__0 [2]),
        .I2(\COUNT_reg[2]__0 [1]),
        .I3(\COUNT_reg[2]__0 [3]),
        .I4(ENABLE2),
        .O(En2_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    En1_i_1
       (.I0(SELECT_IBUF),
        .I1(CE_IBUF),
        .I2(STOP_IBUF),
        .O(En1));
  FDCE #(
    .INIT(1'b0)) 
    En1_reg
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(CLR_IBUF),
        .D(En1),
        .Q(ENABLE1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    En2_i_1
       (.I0(SELECT_IBUF),
        .I1(CE_IBUF),
        .I2(STOP_IBUF),
        .O(En2));
  FDCE #(
    .INIT(1'b0)) 
    En2_reg
       (.C(CLK_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(CLR_IBUF),
        .D(En2),
        .Q(ENABLE2));
  VCC VCC
       (.P(\<const1> ));
endmodule

module Timer_Clock
   (BUS4130,
    Q,
    \COUNT[0]__0_i_2 ,
    \COUNT[3]__0_i_2__0 ,
    UNCONN_OUT,
    \COUNT[3]__0_i_3__0 ,
    UNCONN_OUT_0,
    \COUNT_reg[2] ,
    CLK_IBUF_BUFG,
    \COUNT_reg[1] ,
    \COUNT_reg[0] ,
    \COUNT_reg[2]__0 ,
    CLR_IBUF,
    \COUNT_reg[1]__0 ,
    \COUNT_reg[0]__0 ,
    E,
    \COUNT_reg[3]__0 ,
    \COUNT_reg[3] ,
    \COUNT_reg[0]__0_0 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[0]__0_1 );
  output [2:0]BUS4130;
  output [3:0]Q;
  output \COUNT[0]__0_i_2 ;
  output \COUNT[3]__0_i_2__0 ;
  output [3:0]UNCONN_OUT;
  output \COUNT[3]__0_i_3__0 ;
  output [3:0]UNCONN_OUT_0;
  input \COUNT_reg[2] ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[1] ;
  input \COUNT_reg[0] ;
  input \COUNT_reg[2]__0 ;
  input CLR_IBUF;
  input \COUNT_reg[1]__0 ;
  input \COUNT_reg[0]__0 ;
  input [0:0]E;
  input \COUNT_reg[3]__0 ;
  input [0:0]\COUNT_reg[3] ;
  input \COUNT_reg[0]__0_0 ;
  input [0:0]\COUNT_reg[3]_0 ;
  input \COUNT_reg[0]__0_1 ;

  wire [2:0]BUS4130;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]__0_i_2 ;
  wire \COUNT[3]__0_i_2__0 ;
  wire \COUNT[3]__0_i_3__0 ;
  wire \COUNT_reg[0] ;
  wire \COUNT_reg[0]__0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire \COUNT_reg[0]__0_1 ;
  wire \COUNT_reg[1] ;
  wire \COUNT_reg[1]__0 ;
  wire \COUNT_reg[2] ;
  wire \COUNT_reg[2]__0 ;
  wire [0:0]\COUNT_reg[3] ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]__0 ;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]UNCONN_OUT;
  wire [3:0]UNCONN_OUT_0;

  Minute_counter_5 min
       (.BUS4130(BUS4130),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[3]__0_i_2__0 (\COUNT[3]__0_i_2__0 ),
        .\COUNT[3]__0_i_3__0 (\COUNT[3]__0_i_3__0 ),
        .\COUNT_reg[0]__0 (\COUNT_reg[0]__0_0 ),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0_1 ),
        .\COUNT_reg[3] (\COUNT_reg[3] ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_0 ),
        .Q(UNCONN_OUT),
        .UNCONN_OUT(UNCONN_OUT_0));
  Second_counter_6 sec
       (.BUS4130(BUS4130),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[0]__0_i_2 (\COUNT[0]__0_i_2 ),
        .\COUNT_reg[0] (\COUNT_reg[0] ),
        .\COUNT_reg[0]__0 (\COUNT_reg[0]__0 ),
        .\COUNT_reg[1] (\COUNT_reg[1] ),
        .\COUNT_reg[1]__0 (\COUNT_reg[1]__0 ),
        .\COUNT_reg[2] (\COUNT_reg[2] ),
        .\COUNT_reg[2]__0 (\COUNT_reg[2]__0 ),
        .\COUNT_reg[3]__0 (\COUNT_reg[3]__0 ),
        .E(E),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Timer_Clock" *) 
module Timer_Clock_0
   (BUS4114,
    Q,
    \COUNT[0]__0_i_2__0 ,
    \COUNT[3]__0_i_2__1 ,
    UNCONN_OUT,
    \COUNT[3]__0_i_3__1 ,
    UNCONN_OUT_0,
    \COUNT_reg[2] ,
    CLK_IBUF_BUFG,
    \COUNT_reg[1] ,
    \COUNT_reg[0] ,
    \COUNT_reg[2]__0 ,
    CLR_IBUF,
    \COUNT_reg[1]__0 ,
    \COUNT_reg[0]__0 ,
    E,
    \COUNT_reg[3]__0 ,
    \COUNT_reg[3] ,
    \COUNT_reg[0]__0_0 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[0]__0_1 );
  output [2:0]BUS4114;
  output [3:0]Q;
  output \COUNT[0]__0_i_2__0 ;
  output \COUNT[3]__0_i_2__1 ;
  output [3:0]UNCONN_OUT;
  output \COUNT[3]__0_i_3__1 ;
  output [3:0]UNCONN_OUT_0;
  input \COUNT_reg[2] ;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[1] ;
  input \COUNT_reg[0] ;
  input \COUNT_reg[2]__0 ;
  input CLR_IBUF;
  input \COUNT_reg[1]__0 ;
  input \COUNT_reg[0]__0 ;
  input [0:0]E;
  input \COUNT_reg[3]__0 ;
  input [0:0]\COUNT_reg[3] ;
  input \COUNT_reg[0]__0_0 ;
  input [0:0]\COUNT_reg[3]_0 ;
  input \COUNT_reg[0]__0_1 ;

  wire [2:0]BUS4114;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \COUNT[0]__0_i_2__0 ;
  wire \COUNT[3]__0_i_2__1 ;
  wire \COUNT[3]__0_i_3__1 ;
  wire \COUNT_reg[0] ;
  wire \COUNT_reg[0]__0 ;
  wire \COUNT_reg[0]__0_0 ;
  wire \COUNT_reg[0]__0_1 ;
  wire \COUNT_reg[1] ;
  wire \COUNT_reg[1]__0 ;
  wire \COUNT_reg[2] ;
  wire \COUNT_reg[2]__0 ;
  wire [0:0]\COUNT_reg[3] ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]__0 ;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]UNCONN_OUT;
  wire [3:0]UNCONN_OUT_0;

  Minute_counter min
       (.BUS4114(BUS4114),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[3]__0_i_2__1 (\COUNT[3]__0_i_2__1 ),
        .\COUNT[3]__0_i_3__1 (\COUNT[3]__0_i_3__1 ),
        .\COUNT_reg[0]__0 (\COUNT_reg[0]__0_0 ),
        .\COUNT_reg[0]__0_0 (\COUNT_reg[0]__0_1 ),
        .\COUNT_reg[3] (\COUNT_reg[3] ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_0 ),
        .Q(UNCONN_OUT),
        .UNCONN_OUT(UNCONN_OUT_0));
  Second_counter sec
       (.BUS4114(BUS4114),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[0]__0_i_2__0 (\COUNT[0]__0_i_2__0 ),
        .\COUNT_reg[0] (\COUNT_reg[0] ),
        .\COUNT_reg[0]__0 (\COUNT_reg[0]__0 ),
        .\COUNT_reg[1] (\COUNT_reg[1] ),
        .\COUNT_reg[1]__0 (\COUNT_reg[1]__0 ),
        .\COUNT_reg[2] (\COUNT_reg[2] ),
        .\COUNT_reg[2]__0 (\COUNT_reg[2]__0 ),
        .\COUNT_reg[3]__0 (\COUNT_reg[3]__0 ),
        .E(E),
        .Q(Q));
endmodule

module Timer_Setter
   (E,
    r_D3_reg_0,
    r_D4_reg_0,
    r_D5_reg_0,
    r_D7_reg_0,
    r_D8_reg_0,
    r_D2_reg_0,
    r_D2_reg_1,
    r_D2_reg_2,
    r_D6_reg_0,
    r_D6_reg_1,
    r_D6_reg_2,
    CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    BUS4130,
    BUS4114,
    D8_IBUF,
    Set_Impulse_IBUF,
    STOP_IBUF,
    D7_IBUF,
    D6_IBUF,
    D5_IBUF,
    D4_IBUF,
    D3_IBUF,
    D2_IBUF,
    D1_IBUF);
  output [0:0]E;
  output [0:0]r_D3_reg_0;
  output [0:0]r_D4_reg_0;
  output [0:0]r_D5_reg_0;
  output [0:0]r_D7_reg_0;
  output [0:0]r_D8_reg_0;
  output r_D2_reg_0;
  output r_D2_reg_1;
  output r_D2_reg_2;
  output r_D6_reg_0;
  output r_D6_reg_1;
  output r_D6_reg_2;
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  input [2:0]BUS4130;
  input [2:0]BUS4114;
  input D8_IBUF;
  input Set_Impulse_IBUF;
  input STOP_IBUF;
  input D7_IBUF;
  input D6_IBUF;
  input D5_IBUF;
  input D4_IBUF;
  input D3_IBUF;
  input D2_IBUF;
  input D1_IBUF;

  wire [2:0]BUS4114;
  wire [2:0]BUS4130;
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
  wire [0:0]E;
  wire NET7772;
  wire NET7792;
  wire STOP_IBUF;
  wire Set_Impulse_IBUF;
  wire r_D1;
  wire r_D2;
  wire r_D2_reg_0;
  wire r_D2_reg_1;
  wire r_D2_reg_2;
  wire r_D3;
  wire [0:0]r_D3_reg_0;
  wire r_D4;
  wire [0:0]r_D4_reg_0;
  wire r_D5;
  wire [0:0]r_D5_reg_0;
  wire r_D6;
  wire r_D6_reg_0;
  wire r_D6_reg_1;
  wire r_D6_reg_2;
  wire r_D7;
  wire [0:0]r_D7_reg_0;
  wire r_D8;
  wire [0:0]r_D8_reg_0;

  LUT2 #(
    .INIT(4'h6)) 
    \COUNT[0]_i_1 
       (.I0(NET7772),
        .I1(BUS4130[0]),
        .O(r_D2_reg_2));
  LUT2 #(
    .INIT(4'h6)) 
    \COUNT[0]_i_1__0 
       (.I0(NET7792),
        .I1(BUS4114[0]),
        .O(r_D6_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \COUNT[1]_i_1 
       (.I0(BUS4130[2]),
        .I1(BUS4130[0]),
        .I2(NET7772),
        .I3(BUS4130[1]),
        .O(r_D2_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \COUNT[1]_i_1__0 
       (.I0(BUS4114[2]),
        .I1(BUS4114[0]),
        .I2(NET7792),
        .I3(BUS4114[1]),
        .O(r_D6_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \COUNT[2]_i_1 
       (.I0(BUS4130[1]),
        .I1(BUS4130[0]),
        .I2(NET7772),
        .I3(BUS4130[2]),
        .O(r_D2_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \COUNT[2]_i_1__0 
       (.I0(BUS4114[1]),
        .I1(BUS4114[0]),
        .I2(NET7792),
        .I3(BUS4114[2]),
        .O(r_D6_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D1_i_1
       (.I0(D1_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D1));
  FDCE #(
    .INIT(1'b0)) 
    r_D1_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D1),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D2_i_1
       (.I0(D2_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D2));
  FDCE #(
    .INIT(1'b0)) 
    r_D2_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D2),
        .Q(NET7772));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D3_i_1
       (.I0(D3_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D3));
  FDCE #(
    .INIT(1'b0)) 
    r_D3_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D3),
        .Q(r_D3_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D4_i_1
       (.I0(D4_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D4));
  FDCE #(
    .INIT(1'b0)) 
    r_D4_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D4),
        .Q(r_D4_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D5_i_1
       (.I0(D5_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D5));
  FDCE #(
    .INIT(1'b0)) 
    r_D5_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D5),
        .Q(r_D5_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D6_i_1
       (.I0(D6_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D6));
  FDCE #(
    .INIT(1'b0)) 
    r_D6_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D6),
        .Q(NET7792));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D7_i_1
       (.I0(D7_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D7));
  FDCE #(
    .INIT(1'b0)) 
    r_D7_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D7),
        .Q(r_D7_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D8_i_1
       (.I0(D8_IBUF),
        .I1(Set_Impulse_IBUF),
        .I2(STOP_IBUF),
        .O(r_D8));
  FDCE #(
    .INIT(1'b0)) 
    r_D8_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(r_D8),
        .Q(r_D8_reg_0));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module Top
   (CLK,
    CLR,
    SELECT,
    CE,
    STOP,
    Set_Impulse,
    D1,
    D2,
    D3,
    D4,
    D5,
    D6,
    D7,
    D8,
    seg_out,
    seg_select);
  input CLK;
  input CLR;
  input SELECT;
  input CE;
  input STOP;
  input Set_Impulse;
  input D1;
  input D2;
  input D3;
  input D4;
  input D5;
  input D6;
  input D7;
  input D8;
  output [6:0]seg_out;
  output [7:0]seg_select;

  wire [3:0]BUS4096;
  wire [3:0]BUS4100;
  wire [3:0]BUS4110;
  wire [2:0]BUS4114;
  wire [3:0]BUS4118;
  wire [3:0]BUS4122;
  wire [3:0]BUS4126;
  wire [2:0]BUS4130;
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
  wire NET7776;
  wire NET7780;
  wire NET7784;
  wire NET7800;
  wire NET7808;
  wire SELECT;
  wire SELECT_IBUF;
  wire STOP;
  wire STOP_IBUF;
  wire Set_Impulse;
  wire Set_Impulse_IBUF;
  wire U1_n_2;
  wire U1_n_3;
  wire U2_n_0;
  wire U2_n_1;
  wire U2_n_10;
  wire U2_n_11;
  wire U2_n_2;
  wire U2_n_3;
  wire U2_n_4;
  wire U2_n_5;
  wire U2_n_6;
  wire U2_n_7;
  wire U2_n_8;
  wire U2_n_9;
  wire U3_n_13;
  wire U3_n_7;
  wire U3_n_8;
  wire U4_n_13;
  wire U4_n_7;
  wire U4_n_8;
  wire U5_n_0;
  wire U5_n_1;
  wire U5_n_2;
  wire U5_n_3;
  wire U5_n_4;
  wire U5_n_5;
  wire U5_n_6;
  wire U6_n_0;
  wire U6_n_1;
  wire U6_n_2;
  wire U6_n_3;
  wire U6_n_4;
  wire U6_n_5;
  wire U6_n_6;
  wire U8_n_10;
  wire U8_n_11;
  wire U8_n_6;
  wire U8_n_7;
  wire U8_n_8;
  wire U8_n_9;
  wire [1:0]counter2_reg__0;
  wire [6:0]seg_out;
  wire [6:0]seg_out_OBUF;
  wire [7:0]seg_select;
  wire [7:0]seg_select_OBUF;

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
  Switch U1
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[2]__0 (BUS4110),
        .ENABLE1(ENABLE1),
        .ENABLE2(ENABLE2),
        .En1_reg_0(U1_n_2),
        .En2_reg_0(U1_n_3),
        .Q(BUS4126),
        .SELECT_IBUF(SELECT_IBUF),
        .STOP_IBUF(STOP_IBUF));
  Seven_seg_driver U15
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .Q(counter2_reg__0),
        .\seg_out_reg[0]_0 (U6_n_6),
        .\seg_out_reg[0]_1 (U5_n_6),
        .\seg_out_reg[1]_0 (U6_n_5),
        .\seg_out_reg[1]_1 (U5_n_5),
        .\seg_out_reg[2]_0 (U6_n_4),
        .\seg_out_reg[2]_1 (U5_n_4),
        .\seg_out_reg[3]_0 (U6_n_3),
        .\seg_out_reg[3]_1 (U5_n_3),
        .\seg_out_reg[4]_0 (U6_n_2),
        .\seg_out_reg[4]_1 (U5_n_2),
        .\seg_out_reg[5]_0 (U6_n_1),
        .\seg_out_reg[5]_1 (U5_n_1),
        .\seg_out_reg[6]_0 (seg_out_OBUF),
        .\seg_out_reg[6]_1 (U6_n_0),
        .\seg_out_reg[6]_2 (U5_n_0),
        .\seg_select_reg[7]_0 (seg_select_OBUF));
  Prescaler U2
       (.BUS4114(BUS4114),
        .BUS4130(BUS4130),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT_reg[0]__0 (U3_n_7),
        .\COUNT_reg[0]__0_0 (U4_n_7),
        .\COUNT_reg[0]__0_1 (BUS4110[3]),
        .\COUNT_reg[0]__0_2 (U4_n_8),
        .\COUNT_reg[0]__0_3 (U4_n_13),
        .\COUNT_reg[0]__0_4 (BUS4096[3]),
        .\COUNT_reg[0]__0_5 (U3_n_8),
        .\COUNT_reg[0]__0_6 (U3_n_13),
        .\COUNT_reg[0]__0_7 (BUS4118[3]),
        .\COUNT_reg[2]__0 (U1_n_2),
        .\COUNT_reg[2]__0_0 (U1_n_3),
        .\Divider_reg[17]_0 (U2_n_0),
        .\Divider_reg[17]_1 (U2_n_1),
        .\Divider_reg[17]_2 (U2_n_3),
        .\Divider_reg[17]_3 (U2_n_4),
        .\Divider_reg[17]_4 (U2_n_7),
        .\Divider_reg[17]_5 (U2_n_9),
        .ENABLE1(ENABLE1),
        .ENABLE2(ENABLE2),
        .En1_reg(U2_n_2),
        .En1_reg_0(U2_n_8),
        .En1_reg_1(U2_n_11),
        .En2_reg(U2_n_5),
        .En2_reg_0(U2_n_6),
        .En2_reg_1(U2_n_10),
        .Q(BUS4126[3]));
  Timer_Clock U3
       (.BUS4130(BUS4130),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[0]__0_i_2 (U3_n_7),
        .\COUNT[3]__0_i_2__0 (U3_n_8),
        .\COUNT[3]__0_i_3__0 (U3_n_13),
        .\COUNT_reg[0] (U8_n_8),
        .\COUNT_reg[0]__0 (U2_n_2),
        .\COUNT_reg[0]__0_0 (U2_n_9),
        .\COUNT_reg[0]__0_1 (U2_n_8),
        .\COUNT_reg[1] (U8_n_7),
        .\COUNT_reg[1]__0 (U2_n_1),
        .\COUNT_reg[2] (U8_n_6),
        .\COUNT_reg[2]__0 (U2_n_0),
        .\COUNT_reg[3] (NET7776),
        .\COUNT_reg[3]_0 (NET7780),
        .\COUNT_reg[3]__0 (U2_n_11),
        .E(NET7768),
        .Q(BUS4126),
        .UNCONN_OUT(BUS4118),
        .UNCONN_OUT_0(BUS4122));
  Timer_Clock_0 U4
       (.BUS4114(BUS4114),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .\COUNT[0]__0_i_2__0 (U4_n_7),
        .\COUNT[3]__0_i_2__1 (U4_n_8),
        .\COUNT[3]__0_i_3__1 (U4_n_13),
        .\COUNT_reg[0] (U8_n_11),
        .\COUNT_reg[0]__0 (U2_n_5),
        .\COUNT_reg[0]__0_0 (U2_n_7),
        .\COUNT_reg[0]__0_1 (U2_n_6),
        .\COUNT_reg[1] (U8_n_10),
        .\COUNT_reg[1]__0 (U2_n_4),
        .\COUNT_reg[2] (U8_n_9),
        .\COUNT_reg[2]__0 (U2_n_3),
        .\COUNT_reg[3] (NET7800),
        .\COUNT_reg[3]_0 (NET7808),
        .\COUNT_reg[3]__0 (U2_n_10),
        .E(NET7784),
        .Q(BUS4110),
        .UNCONN_OUT(BUS4096),
        .UNCONN_OUT_0(BUS4100));
  Decoder U5
       (.BUS4114(BUS4114),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .Q(BUS4110),
        .\seg2_reg[4]_0 (BUS4100),
        .\seg3_reg[0]_0 (U5_n_6),
        .\seg3_reg[1]_0 (U5_n_5),
        .\seg3_reg[2]_0 (U5_n_4),
        .\seg3_reg[3]_0 (U5_n_3),
        .\seg3_reg[4]_0 (U5_n_2),
        .\seg3_reg[5]_0 (U5_n_1),
        .\seg3_reg[5]_1 (BUS4096),
        .\seg3_reg[6]_0 (U5_n_0),
        .\seg_out_reg[6] (counter2_reg__0));
  Decoder_1 U6
       (.BUS4130(BUS4130),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .Q(BUS4126),
        .\seg2_reg[4]_0 (BUS4122),
        .\seg3_reg[0]_0 (U6_n_6),
        .\seg3_reg[1]_0 (U6_n_5),
        .\seg3_reg[2]_0 (U6_n_4),
        .\seg3_reg[3]_0 (U6_n_3),
        .\seg3_reg[4]_0 (U6_n_2),
        .\seg3_reg[5]_0 (U6_n_1),
        .\seg3_reg[5]_1 (BUS4118),
        .\seg3_reg[6]_0 (U6_n_0),
        .\seg_out_reg[6] (counter2_reg__0));
  Timer_Setter U8
       (.BUS4114(BUS4114),
        .BUS4130(BUS4130),
        .CE_IBUF(CE_IBUF),
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
        .E(NET7768),
        .STOP_IBUF(STOP_IBUF),
        .Set_Impulse_IBUF(Set_Impulse_IBUF),
        .r_D2_reg_0(U8_n_6),
        .r_D2_reg_1(U8_n_7),
        .r_D2_reg_2(U8_n_8),
        .r_D3_reg_0(NET7776),
        .r_D4_reg_0(NET7780),
        .r_D5_reg_0(NET7784),
        .r_D6_reg_0(U8_n_9),
        .r_D6_reg_1(U8_n_10),
        .r_D6_reg_2(U8_n_11),
        .r_D7_reg_0(NET7800),
        .r_D8_reg_0(NET7808));
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
