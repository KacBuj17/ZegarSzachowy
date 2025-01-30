// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jan 29 14:30:24 2025
// Host        : Lab401-00 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Counter
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2]_1 ,
    ENABLE1,
    En1_reg,
    NET7772,
    AR,
    BUS14424,
    \COUNT_reg[0]_0 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[2]_0 ;
  input \COUNT_reg[2]_1 ;
  input ENABLE1;
  output En1_reg;
  input NET7772;
  input [0:0]AR;
  input [0:0]BUS14424;
  output [6:0]\COUNT_reg[0]_0 ;

  wire [0:0]AR;
  wire [0:0]BUS14424;
  wire [2:0]BUS14432;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]_1 ;
  wire ENABLE1;
  wire En1_reg;
  wire NET7772;

  LUT5 #(
    .INIT(32'hCFDF3020)) 
    \COUNT[0]_i_1 
       (.I0(\COUNT_reg[2]_1 ),
        .I1(\COUNT_reg[0]_2 ),
        .I2(CE_IBUF),
        .I3(NET7772),
        .I4(BUS14432[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFCFFF22002000)) 
    \COUNT[1]_i_1 
       (.I0(BUS14432[2]),
        .I1(BUS14432[0]),
        .I2(NET7772),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14432[1]),
        .O(\COUNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEFFF11001000)) 
    \COUNT[2]_i_1 
       (.I0(BUS14432[0]),
        .I1(BUS14432[1]),
        .I2(NET7772),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14432[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \COUNT[3]_i_3 
       (.I0(ENABLE1),
        .I1(\COUNT_reg[0]_1 ),
        .I2(BUS14424),
        .I3(BUS14432[0]),
        .I4(BUS14432[1]),
        .I5(BUS14432[2]),
        .O(En1_reg));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14432[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(BUS14432[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14432[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \seg1[0]_i_1 
       (.I0(BUS14432[1]),
        .I1(BUS14432[2]),
        .I2(BUS14432[0]),
        .O(\COUNT_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \seg1[1]_i_1__0 
       (.I0(BUS14432[0]),
        .I1(BUS14432[2]),
        .I2(BUS14432[1]),
        .O(\COUNT_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg1[2]_i_1 
       (.I0(BUS14432[2]),
        .I1(BUS14432[1]),
        .I2(BUS14432[0]),
        .O(\COUNT_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \seg1[3]_i_1 
       (.I0(BUS14432[0]),
        .I1(BUS14432[2]),
        .I2(BUS14432[1]),
        .O(\COUNT_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \seg1[4]_i_1 
       (.I0(BUS14432[0]),
        .I1(BUS14432[1]),
        .I2(BUS14432[2]),
        .O(\COUNT_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \seg1[5]_i_1__0 
       (.I0(BUS14432[1]),
        .I1(BUS14432[0]),
        .I2(BUS14432[2]),
        .O(\COUNT_reg[0]_0 [5]));
  LUT3 #(
    .INIT(8'h83)) 
    \seg1[6]_i_1 
       (.I0(BUS14432[0]),
        .I1(BUS14432[2]),
        .I2(BUS14432[1]),
        .O(\COUNT_reg[0]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_10
   (CLK_IBUF_BUFG,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[3]_0 ,
    END,
    En_reg,
    En_reg_0,
    En_reg_1,
    En_reg_3,
    En_reg_4,
    En_reg_5,
    AR,
    \COUNT_reg[0]_0 ,
    En_reg_2);
  input CLK_IBUF_BUFG;
  output \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  output \COUNT_reg[3]_0 ;
  input END;
  output En_reg;
  input En_reg_0;
  input En_reg_1;
  input En_reg_3;
  input En_reg_4;
  input En_reg_5;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0]_0 ;
  input [0:0]En_reg_2;

  wire [0:0]AR;
  wire [3:0]BUS14460;
  wire CLK_IBUF_BUFG;
  wire \COUNT[0]_i_1__0_n_0 ;
  wire \COUNT[1]_i_1__0_n_0 ;
  wire \COUNT[2]_i_1__2_n_0 ;
  wire \COUNT[3]_i_2__2_n_0 ;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[3]_0 ;
  wire END;
  wire En_i_2_n_0;
  wire En_reg;
  wire En_reg_0;
  wire En_reg_1;
  wire [0:0]En_reg_2;
  wire En_reg_3;
  wire En_reg_4;
  wire En_reg_5;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__0 
       (.I0(BUS14460[0]),
        .O(\COUNT[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT[0]_i_2__0 
       (.I0(BUS14460[0]),
        .I1(BUS14460[1]),
        .I2(BUS14460[2]),
        .I3(BUS14460[3]),
        .O(\COUNT_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__0 
       (.I0(BUS14460[3]),
        .I1(BUS14460[2]),
        .I2(BUS14460[1]),
        .I3(BUS14460[0]),
        .O(\COUNT[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hA9A8)) 
    \COUNT[2]_i_1__2 
       (.I0(BUS14460[2]),
        .I1(BUS14460[1]),
        .I2(BUS14460[0]),
        .I3(BUS14460[3]),
        .O(\COUNT[2]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \COUNT[2]_i_2__1 
       (.I0(En_reg_0),
        .I1(BUS14460[3]),
        .I2(BUS14460[2]),
        .I3(BUS14460[1]),
        .I4(BUS14460[0]),
        .O(\COUNT_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2__2 
       (.I0(BUS14460[3]),
        .I1(BUS14460[2]),
        .I2(BUS14460[1]),
        .I3(BUS14460[0]),
        .O(\COUNT[3]_i_2__2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[0]_i_1__0_n_0 ),
        .PRE(AR),
        .Q(BUS14460[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1__0_n_0 ),
        .Q(BUS14460[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(AR),
        .D(\COUNT[2]_i_1__2_n_0 ),
        .Q(BUS14460[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[3]_i_2__2_n_0 ),
        .PRE(AR),
        .Q(BUS14460[3]));
  LUT6 #(
    .INIT(64'hECECEFFFECECE000)) 
    En_i_1
       (.I0(En_i_2_n_0),
        .I1(En_reg_3),
        .I2(En_reg_0),
        .I3(En_reg_4),
        .I4(En_reg_5),
        .I5(END),
        .O(En_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    En_i_2
       (.I0(En_reg_1),
        .I1(En_reg_2),
        .I2(BUS14460[3]),
        .I3(BUS14460[2]),
        .I4(BUS14460[1]),
        .I5(BUS14460[0]),
        .O(En_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE1E2)) 
    \seg2[0]_i_1__0 
       (.I0(BUS14460[2]),
        .I1(BUS14460[1]),
        .I2(BUS14460[3]),
        .I3(BUS14460[0]),
        .O(\COUNT_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg2[1]_i_1__0 
       (.I0(BUS14460[3]),
        .I1(BUS14460[0]),
        .I2(BUS14460[2]),
        .I3(BUS14460[1]),
        .O(\COUNT_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg2[2]_i_1__0 
       (.I0(BUS14460[0]),
        .I1(BUS14460[3]),
        .I2(BUS14460[1]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'hEDC2)) 
    \seg2[3]_i_1__0 
       (.I0(BUS14460[0]),
        .I1(BUS14460[3]),
        .I2(BUS14460[1]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg2[4]_i_1__0 
       (.I0(BUS14460[0]),
        .I1(BUS14460[3]),
        .I2(BUS14460[1]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg2[5]_i_1 
       (.I0(BUS14460[3]),
        .I1(BUS14460[1]),
        .I2(BUS14460[0]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hECC3)) 
    \seg2[6]_i_1__0 
       (.I0(BUS14460[0]),
        .I1(BUS14460[3]),
        .I2(BUS14460[1]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[0]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_2
   (CLK_IBUF_BUFG,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[3]_1 ,
    ENABLE1,
    AR,
    \COUNT_reg[3]_0 ,
    D);
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_0 ;
  output \COUNT_reg[2]_0 ;
  output \COUNT_reg[3]_1 ;
  input ENABLE1;
  input [0:0]AR;
  output [0:0]\COUNT_reg[3]_0 ;
  output [6:0]D;

  wire [0:0]AR;
  wire [2:0]BUS14424;
  wire CLK_IBUF_BUFG;
  wire \COUNT[0]_i_1__1_n_0 ;
  wire \COUNT[1]_i_1__1_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire \COUNT[3]_i_2_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[2]_0 ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]_1 ;
  wire [6:0]D;
  wire ENABLE1;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__1 
       (.I0(BUS14424[0]),
        .O(\COUNT[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__1 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14424[2]),
        .I2(BUS14424[1]),
        .I3(BUS14424[0]),
        .O(\COUNT[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hA9A8)) 
    \COUNT[2]_i_1 
       (.I0(BUS14424[2]),
        .I1(BUS14424[1]),
        .I2(BUS14424[0]),
        .I3(\COUNT_reg[3]_0 ),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \COUNT[2]_i_2__0 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14424[2]),
        .I2(BUS14424[1]),
        .I3(BUS14424[0]),
        .I4(ENABLE1),
        .O(\COUNT_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14424[2]),
        .I2(BUS14424[1]),
        .I3(BUS14424[0]),
        .O(\COUNT[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[3]_i_4 
       (.I0(BUS14424[2]),
        .I1(BUS14424[1]),
        .I2(BUS14424[0]),
        .O(\COUNT_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(\COUNT[0]_i_1__1_n_0 ),
        .PRE(AR),
        .Q(BUS14424[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1__1_n_0 ),
        .Q(BUS14424[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .CLR(AR),
        .D(\COUNT[2]_i_1_n_0 ),
        .Q(BUS14424[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(\COUNT[3]_i_2_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hE1E2)) 
    \seg0[0]_i_1 
       (.I0(BUS14424[2]),
        .I1(BUS14424[1]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(BUS14424[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg0[1]_i_1 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14424[0]),
        .I2(BUS14424[2]),
        .I3(BUS14424[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg0[2]_i_1 
       (.I0(BUS14424[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hEDC2)) 
    \seg0[3]_i_1 
       (.I0(BUS14424[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg0[4]_i_1 
       (.I0(BUS14424[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg0[5]_i_1__0 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14424[1]),
        .I2(BUS14424[0]),
        .I3(BUS14424[2]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hECC3)) 
    \seg0[6]_i_1 
       (.I0(BUS14424[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_3
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_3 ,
    \COUNT_reg[0]_4 ,
    \COUNT_reg[0]_5 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2]_1 ,
    NET7780,
    AR,
    \COUNT_reg[0]_2 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  output \COUNT_reg[0]_0 ;
  output \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_3 ;
  input \COUNT_reg[0]_4 ;
  input \COUNT_reg[0]_5 ;
  input \COUNT_reg[2]_0 ;
  input \COUNT_reg[2]_1 ;
  input NET7780;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0]_2 ;

  wire [0:0]AR;
  wire [2:0]BUS14398;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]\COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire \COUNT_reg[0]_4 ;
  wire \COUNT_reg[0]_5 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]_1 ;
  wire NET7780;

  LUT6 #(
    .INIT(64'hF0FFF7FF0F000800)) 
    \COUNT[0]_i_1 
       (.I0(\COUNT_reg[0]_3 ),
        .I1(\COUNT_reg[0]_4 ),
        .I2(\COUNT_reg[0]_5 ),
        .I3(CE_IBUF),
        .I4(NET7780),
        .I5(BUS14398[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFCFFF22002000)) 
    \COUNT[1]_i_1 
       (.I0(BUS14398[2]),
        .I1(BUS14398[0]),
        .I2(NET7780),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14398[1]),
        .O(\COUNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEFFF11001000)) 
    \COUNT[2]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[1]),
        .I2(NET7780),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14398[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14398[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(BUS14398[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14398[2]));
  LUT5 #(
    .INIT(32'h00020000)) 
    En_i_3
       (.I0(\COUNT_reg[0]_3 ),
        .I1(BUS14398[0]),
        .I2(BUS14398[2]),
        .I3(BUS14398[1]),
        .I4(\COUNT_reg[0]_4 ),
        .O(\COUNT_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    En_i_5
       (.I0(\COUNT_reg[0]_3 ),
        .I1(BUS14398[0]),
        .I2(CE_IBUF),
        .I3(BUS14398[2]),
        .I4(BUS14398[1]),
        .I5(\COUNT_reg[0]_4 ),
        .O(\COUNT_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \seg3[0]_i_1 
       (.I0(BUS14398[1]),
        .I1(BUS14398[0]),
        .I2(BUS14398[2]),
        .O(\COUNT_reg[0]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \seg3[1]_i_1__0 
       (.I0(BUS14398[0]),
        .I1(BUS14398[2]),
        .I2(BUS14398[1]),
        .O(\COUNT_reg[0]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg3[2]_i_1 
       (.I0(BUS14398[2]),
        .I1(BUS14398[1]),
        .I2(BUS14398[0]),
        .O(\COUNT_reg[0]_2 [2]));
  LUT3 #(
    .INIT(8'h86)) 
    \seg3[3]_i_1 
       (.I0(BUS14398[2]),
        .I1(BUS14398[0]),
        .I2(BUS14398[1]),
        .O(\COUNT_reg[0]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \seg3[4]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[1]),
        .I2(BUS14398[2]),
        .O(\COUNT_reg[0]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \seg3[5]_i_1__0 
       (.I0(BUS14398[1]),
        .I1(BUS14398[0]),
        .I2(BUS14398[2]),
        .O(\COUNT_reg[0]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \seg3[6]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[2]),
        .I2(BUS14398[1]),
        .O(\COUNT_reg[0]_2 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_4
   (CLK_IBUF_BUFG,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[3]_0 ,
    AR,
    \COUNT_reg[0]_0 );
  input CLK_IBUF_BUFG;
  output \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[2]_0 ;
  output \COUNT_reg[3]_0 ;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0]_0 ;

  wire [0:0]AR;
  wire [3:0]BUS14402;
  wire CLK_IBUF_BUFG;
  wire \COUNT[0]_i_1__2_n_0 ;
  wire \COUNT[1]_i_1__2_n_0 ;
  wire \COUNT[2]_i_1__0_n_0 ;
  wire \COUNT[3]_i_2__0_n_0 ;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__2 
       (.I0(BUS14402[0]),
        .O(\COUNT[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT[0]_i_2 
       (.I0(BUS14402[0]),
        .I1(BUS14402[1]),
        .I2(BUS14402[2]),
        .I3(BUS14402[3]),
        .O(\COUNT_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__2 
       (.I0(BUS14402[3]),
        .I1(BUS14402[2]),
        .I2(BUS14402[1]),
        .I3(BUS14402[0]),
        .O(\COUNT[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hA9A8)) 
    \COUNT[2]_i_1__0 
       (.I0(BUS14402[2]),
        .I1(BUS14402[1]),
        .I2(BUS14402[0]),
        .I3(BUS14402[3]),
        .O(\COUNT[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \COUNT[2]_i_2 
       (.I0(\COUNT_reg[2]_0 ),
        .I1(BUS14402[3]),
        .I2(BUS14402[2]),
        .I3(BUS14402[1]),
        .I4(BUS14402[0]),
        .O(\COUNT_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2__0 
       (.I0(BUS14402[3]),
        .I1(BUS14402[2]),
        .I2(BUS14402[1]),
        .I3(BUS14402[0]),
        .O(\COUNT[3]_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[0]_i_1__2_n_0 ),
        .PRE(AR),
        .Q(BUS14402[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1__2_n_0 ),
        .Q(BUS14402[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .CLR(AR),
        .D(\COUNT[2]_i_1__0_n_0 ),
        .Q(BUS14402[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_2 ),
        .D(\COUNT[3]_i_2__0_n_0 ),
        .PRE(AR),
        .Q(BUS14402[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hE1E2)) 
    \seg2[0]_i_1 
       (.I0(BUS14402[2]),
        .I1(BUS14402[1]),
        .I2(BUS14402[3]),
        .I3(BUS14402[0]),
        .O(\COUNT_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg2[1]_i_1 
       (.I0(BUS14402[3]),
        .I1(BUS14402[0]),
        .I2(BUS14402[2]),
        .I3(BUS14402[1]),
        .O(\COUNT_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg2[2]_i_1 
       (.I0(BUS14402[0]),
        .I1(BUS14402[3]),
        .I2(BUS14402[1]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'hEDC2)) 
    \seg2[3]_i_1 
       (.I0(BUS14402[0]),
        .I1(BUS14402[3]),
        .I2(BUS14402[1]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg2[4]_i_1 
       (.I0(BUS14402[0]),
        .I1(BUS14402[3]),
        .I2(BUS14402[1]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg2[5]_i_1__0 
       (.I0(BUS14402[3]),
        .I1(BUS14402[1]),
        .I2(BUS14402[0]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hECC3)) 
    \seg2[6]_i_1 
       (.I0(BUS14402[0]),
        .I1(BUS14402[3]),
        .I2(BUS14402[1]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[0]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_7
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2]_1 ,
    ENABLE2,
    En2_reg,
    En_reg,
    NET7792,
    AR,
    BUS14448,
    \COUNT_reg[0]_0 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[2]_0 ;
  input \COUNT_reg[2]_1 ;
  input ENABLE2;
  output En2_reg;
  input En_reg;
  input NET7792;
  input [0:0]AR;
  input [0:0]BUS14448;
  output [6:0]\COUNT_reg[0]_0 ;

  wire [0:0]AR;
  wire [2:0]BUS14440;
  wire [0:0]BUS14448;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]_1 ;
  wire ENABLE2;
  wire En2_reg;
  wire En_reg;
  wire NET7792;

  LUT5 #(
    .INIT(32'hCFDF3020)) 
    \COUNT[0]_i_1 
       (.I0(\COUNT_reg[2]_1 ),
        .I1(\COUNT_reg[0]_1 ),
        .I2(CE_IBUF),
        .I3(NET7792),
        .I4(BUS14440[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFCFFF22002000)) 
    \COUNT[1]_i_1 
       (.I0(BUS14440[2]),
        .I1(BUS14440[0]),
        .I2(NET7792),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14440[1]),
        .O(\COUNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEFFF11001000)) 
    \COUNT[2]_i_1 
       (.I0(BUS14440[0]),
        .I1(BUS14440[1]),
        .I2(NET7792),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14440[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \COUNT[3]_i_3__0 
       (.I0(ENABLE2),
        .I1(En_reg),
        .I2(BUS14448),
        .I3(BUS14440[0]),
        .I4(BUS14440[1]),
        .I5(BUS14440[2]),
        .O(En2_reg));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14440[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(BUS14440[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14440[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \seg1[0]_i_1__0 
       (.I0(BUS14440[1]),
        .I1(BUS14440[2]),
        .I2(BUS14440[0]),
        .O(\COUNT_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \seg1[1]_i_1 
       (.I0(BUS14440[0]),
        .I1(BUS14440[2]),
        .I2(BUS14440[1]),
        .O(\COUNT_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg1[2]_i_1__0 
       (.I0(BUS14440[2]),
        .I1(BUS14440[1]),
        .I2(BUS14440[0]),
        .O(\COUNT_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \seg1[3]_i_1__0 
       (.I0(BUS14440[0]),
        .I1(BUS14440[2]),
        .I2(BUS14440[1]),
        .O(\COUNT_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \seg1[4]_i_1__0 
       (.I0(BUS14440[0]),
        .I1(BUS14440[1]),
        .I2(BUS14440[2]),
        .O(\COUNT_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \seg1[5]_i_1 
       (.I0(BUS14440[1]),
        .I1(BUS14440[0]),
        .I2(BUS14440[2]),
        .O(\COUNT_reg[0]_0 [5]));
  LUT3 #(
    .INIT(8'h83)) 
    \seg1[6]_i_1__0 
       (.I0(BUS14440[0]),
        .I1(BUS14440[2]),
        .I2(BUS14440[1]),
        .O(\COUNT_reg[0]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_8
   (CLK_IBUF_BUFG,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[3]_1 ,
    ENABLE2,
    AR,
    \COUNT_reg[3]_0 ,
    D);
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_0 ;
  output \COUNT_reg[2]_0 ;
  output \COUNT_reg[3]_1 ;
  input ENABLE2;
  input [0:0]AR;
  output [0:0]\COUNT_reg[3]_0 ;
  output [6:0]D;

  wire [0:0]AR;
  wire [2:0]BUS14448;
  wire CLK_IBUF_BUFG;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[2]_0 ;
  wire [0:0]\COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]_1 ;
  wire [6:0]D;
  wire ENABLE2;
  wire [3:0]p_2_in;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1 
       (.I0(BUS14448[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14448[2]),
        .I2(BUS14448[1]),
        .I3(BUS14448[0]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA9A8)) 
    \COUNT[2]_i_1__1 
       (.I0(BUS14448[2]),
        .I1(BUS14448[1]),
        .I2(BUS14448[0]),
        .I3(\COUNT_reg[3]_0 ),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \COUNT[2]_i_3 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14448[2]),
        .I2(BUS14448[1]),
        .I3(BUS14448[0]),
        .I4(ENABLE2),
        .O(\COUNT_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2__1 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14448[2]),
        .I2(BUS14448[1]),
        .I3(BUS14448[0]),
        .O(p_2_in[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[3]_i_4__0 
       (.I0(BUS14448[2]),
        .I1(BUS14448[1]),
        .I2(BUS14448[0]),
        .O(\COUNT_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(p_2_in[0]),
        .PRE(AR),
        .Q(BUS14448[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .CLR(AR),
        .D(p_2_in[1]),
        .Q(BUS14448[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .CLR(AR),
        .D(p_2_in[2]),
        .Q(BUS14448[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\COUNT_reg[0]_0 ),
        .D(p_2_in[3]),
        .PRE(AR),
        .Q(\COUNT_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hE1E2)) 
    \seg0[0]_i_1__0 
       (.I0(BUS14448[2]),
        .I1(BUS14448[1]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(BUS14448[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg0[1]_i_1__0 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14448[0]),
        .I2(BUS14448[2]),
        .I3(BUS14448[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg0[2]_i_1__0 
       (.I0(BUS14448[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hEDC2)) 
    \seg0[3]_i_1__0 
       (.I0(BUS14448[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg0[4]_i_1__0 
       (.I0(BUS14448[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg0[5]_i_1 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14448[1]),
        .I2(BUS14448[0]),
        .I3(BUS14448[2]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hECC3)) 
    \seg0[6]_i_1__0 
       (.I0(BUS14448[0]),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_9
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    \COUNT_reg[0]_4 ,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[1]_1 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2]_1 ,
    NET7808,
    AR,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[0]_3 ;
  input \COUNT_reg[0]_4 ;
  output \COUNT_reg[1]_0 ;
  output \COUNT_reg[1]_1 ;
  input \COUNT_reg[2]_0 ;
  input \COUNT_reg[2]_1 ;
  input NET7808;
  input [0:0]AR;
  output [0:0]\COUNT_reg[0]_0 ;
  output [6:0]\COUNT_reg[0]_1 ;

  wire [0:0]AR;
  wire [2:1]BUS14456;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire [0:0]\COUNT_reg[0]_0 ;
  wire [6:0]\COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire \COUNT_reg[0]_4 ;
  wire \COUNT_reg[1]_0 ;
  wire \COUNT_reg[1]_1 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]_1 ;
  wire NET7808;

  LUT6 #(
    .INIT(64'hF0FFF7FF0F000800)) 
    \COUNT[0]_i_1 
       (.I0(\COUNT_reg[0]_2 ),
        .I1(\COUNT_reg[0]_3 ),
        .I2(\COUNT_reg[0]_4 ),
        .I3(CE_IBUF),
        .I4(NET7808),
        .I5(\COUNT_reg[0]_0 ),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFCFFF22002000)) 
    \COUNT[1]_i_1 
       (.I0(BUS14456[2]),
        .I1(\COUNT_reg[0]_0 ),
        .I2(NET7808),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14456[1]),
        .O(\COUNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEFFF11001000)) 
    \COUNT[2]_i_1 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(BUS14456[1]),
        .I2(NET7808),
        .I3(\COUNT_reg[2]_0 ),
        .I4(\COUNT_reg[2]_1 ),
        .I5(BUS14456[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(BUS14456[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14456[2]));
  LUT5 #(
    .INIT(32'h00100000)) 
    En_i_4
       (.I0(BUS14456[1]),
        .I1(BUS14456[2]),
        .I2(CE_IBUF),
        .I3(\COUNT_reg[0]_0 ),
        .I4(\COUNT_reg[0]_2 ),
        .O(\COUNT_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    En_i_6
       (.I0(BUS14456[1]),
        .I1(BUS14456[2]),
        .O(\COUNT_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \seg3[0]_i_1__0 
       (.I0(BUS14456[1]),
        .I1(\COUNT_reg[0]_0 ),
        .I2(BUS14456[2]),
        .O(\COUNT_reg[0]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \seg3[1]_i_1 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(BUS14456[2]),
        .I2(BUS14456[1]),
        .O(\COUNT_reg[0]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg3[2]_i_1__0 
       (.I0(BUS14456[2]),
        .I1(BUS14456[1]),
        .I2(\COUNT_reg[0]_0 ),
        .O(\COUNT_reg[0]_1 [2]));
  LUT3 #(
    .INIT(8'h86)) 
    \seg3[3]_i_1__0 
       (.I0(BUS14456[2]),
        .I1(\COUNT_reg[0]_0 ),
        .I2(BUS14456[1]),
        .O(\COUNT_reg[0]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \seg3[4]_i_1__0 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(BUS14456[1]),
        .I2(BUS14456[2]),
        .O(\COUNT_reg[0]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \seg3[5]_i_1 
       (.I0(BUS14456[1]),
        .I1(\COUNT_reg[0]_0 ),
        .I2(BUS14456[2]),
        .O(\COUNT_reg[0]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \seg3[6]_i_1__0 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(BUS14456[2]),
        .I2(BUS14456[1]),
        .O(\COUNT_reg[0]_1 [6]));
endmodule

module Decoder
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \seg0_reg[0]_0 ,
    \seg0_reg[1]_0 ,
    \seg0_reg[2]_0 ,
    \seg0_reg[3]_0 ,
    \seg0_reg[4]_0 ,
    \seg0_reg[5]_0 ,
    \seg0_reg[6]_0 ,
    AR,
    D,
    Q,
    \seg0_reg[6]_1 ,
    \seg1_reg[6]_0 ,
    \seg2_reg[6]_0 ,
    \seg3_reg[6]_0 ,
    seg_select__0);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  output \seg0_reg[0]_0 ;
  output \seg0_reg[1]_0 ;
  output \seg0_reg[2]_0 ;
  output \seg0_reg[3]_0 ;
  output \seg0_reg[4]_0 ;
  output \seg0_reg[5]_0 ;
  output \seg0_reg[6]_0 ;
  input [0:0]AR;
  input [6:0]D;
  input [6:0]Q;
  output [6:0]\seg0_reg[6]_1 ;
  input [6:0]\seg1_reg[6]_0 ;
  input [6:0]\seg2_reg[6]_0 ;
  input [6:0]\seg3_reg[6]_0 ;
  input [1:0]seg_select__0;

  wire [0:0]AR;
  wire [6:0]BUS1184;
  wire [6:0]BUS1190;
  wire [6:0]BUS1196;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [6:0]D;
  wire [6:0]Q;
  wire \seg0_reg[0]_0 ;
  wire \seg0_reg[1]_0 ;
  wire \seg0_reg[2]_0 ;
  wire \seg0_reg[3]_0 ;
  wire \seg0_reg[4]_0 ;
  wire \seg0_reg[5]_0 ;
  wire \seg0_reg[6]_0 ;
  wire [6:0]\seg0_reg[6]_1 ;
  wire [6:0]\seg1_reg[6]_0 ;
  wire [6:0]\seg2_reg[6]_0 ;
  wire [6:0]\seg3_reg[6]_0 ;
  wire [1:0]seg_select__0;

  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[0]),
        .Q(\seg0_reg[6]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[1]),
        .Q(\seg0_reg[6]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[2]),
        .Q(\seg0_reg[6]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[3]),
        .Q(\seg0_reg[6]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[4]),
        .Q(\seg0_reg[6]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[5]),
        .Q(\seg0_reg[6]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[6]),
        .Q(\seg0_reg[6]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [0]),
        .Q(BUS1184[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [1]),
        .Q(BUS1184[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [2]),
        .Q(BUS1184[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [3]),
        .Q(BUS1184[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [4]),
        .Q(BUS1184[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [5]),
        .Q(BUS1184[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [6]),
        .Q(BUS1184[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [0]),
        .Q(BUS1190[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [1]),
        .Q(BUS1190[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [2]),
        .Q(BUS1190[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [3]),
        .Q(BUS1190[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [4]),
        .Q(BUS1190[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [5]),
        .Q(BUS1190[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [6]),
        .Q(BUS1190[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [0]),
        .Q(BUS1196[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [1]),
        .Q(BUS1196[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [2]),
        .Q(BUS1196[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [3]),
        .Q(BUS1196[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [4]),
        .Q(BUS1196[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [5]),
        .Q(BUS1196[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [6]),
        .Q(BUS1196[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[0]_i_2 
       (.I0(Q[0]),
        .I1(BUS1196[0]),
        .I2(seg_select__0[1]),
        .I3(BUS1190[0]),
        .I4(seg_select__0[0]),
        .I5(BUS1184[0]),
        .O(\seg0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[1]_i_2 
       (.I0(Q[1]),
        .I1(BUS1196[1]),
        .I2(seg_select__0[1]),
        .I3(BUS1190[1]),
        .I4(seg_select__0[0]),
        .I5(BUS1184[1]),
        .O(\seg0_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[2]_i_2 
       (.I0(Q[2]),
        .I1(BUS1196[2]),
        .I2(seg_select__0[1]),
        .I3(BUS1190[2]),
        .I4(seg_select__0[0]),
        .I5(BUS1184[2]),
        .O(\seg0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[3]_i_2 
       (.I0(Q[3]),
        .I1(BUS1196[3]),
        .I2(seg_select__0[1]),
        .I3(BUS1190[3]),
        .I4(seg_select__0[0]),
        .I5(BUS1184[3]),
        .O(\seg0_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[4]_i_2 
       (.I0(Q[4]),
        .I1(BUS1196[4]),
        .I2(seg_select__0[1]),
        .I3(BUS1190[4]),
        .I4(seg_select__0[0]),
        .I5(BUS1184[4]),
        .O(\seg0_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[5]_i_2 
       (.I0(Q[5]),
        .I1(BUS1196[5]),
        .I2(seg_select__0[1]),
        .I3(BUS1190[5]),
        .I4(seg_select__0[0]),
        .I5(BUS1184[5]),
        .O(\seg0_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[6]_i_3 
       (.I0(Q[6]),
        .I1(BUS1196[6]),
        .I2(seg_select__0[1]),
        .I3(BUS1190[6]),
        .I4(seg_select__0[0]),
        .I5(BUS1184[6]),
        .O(\seg0_reg[6]_0 ));
endmodule

(* ORIG_REF_NAME = "Decoder" *) 
module Decoder_0
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \seg0_reg[0]_0 ,
    \seg0_reg[1]_0 ,
    \seg0_reg[2]_0 ,
    \seg0_reg[3]_0 ,
    \seg0_reg[4]_0 ,
    \seg0_reg[5]_0 ,
    \seg0_reg[6]_0 ,
    AR,
    D,
    Q,
    \seg1_reg[6]_0 ,
    \seg2_reg[6]_0 ,
    \seg3_reg[6]_0 ,
    \seg_out_reg[6] ,
    seg_select__0);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  output \seg0_reg[0]_0 ;
  output \seg0_reg[1]_0 ;
  output \seg0_reg[2]_0 ;
  output \seg0_reg[3]_0 ;
  output \seg0_reg[4]_0 ;
  output \seg0_reg[5]_0 ;
  output \seg0_reg[6]_0 ;
  input [0:0]AR;
  input [6:0]D;
  output [6:0]Q;
  input [6:0]\seg1_reg[6]_0 ;
  input [6:0]\seg2_reg[6]_0 ;
  input [6:0]\seg3_reg[6]_0 ;
  input [6:0]\seg_out_reg[6] ;
  input [1:0]seg_select__0;

  wire [0:0]AR;
  wire [6:0]BUS9133;
  wire [6:0]BUS9141;
  wire [6:0]BUS9149;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [6:0]D;
  wire [6:0]Q;
  wire \seg0_reg[0]_0 ;
  wire \seg0_reg[1]_0 ;
  wire \seg0_reg[2]_0 ;
  wire \seg0_reg[3]_0 ;
  wire \seg0_reg[4]_0 ;
  wire \seg0_reg[5]_0 ;
  wire \seg0_reg[6]_0 ;
  wire [6:0]\seg1_reg[6]_0 ;
  wire [6:0]\seg2_reg[6]_0 ;
  wire [6:0]\seg3_reg[6]_0 ;
  wire [6:0]\seg_out_reg[6] ;
  wire [1:0]seg_select__0;

  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [0]),
        .Q(BUS9133[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [1]),
        .Q(BUS9133[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [2]),
        .Q(BUS9133[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [3]),
        .Q(BUS9133[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [4]),
        .Q(BUS9133[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [5]),
        .Q(BUS9133[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [6]),
        .Q(BUS9133[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [0]),
        .Q(BUS9141[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [1]),
        .Q(BUS9141[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [2]),
        .Q(BUS9141[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [3]),
        .Q(BUS9141[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [4]),
        .Q(BUS9141[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [5]),
        .Q(BUS9141[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [6]),
        .Q(BUS9141[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [0]),
        .Q(BUS9149[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [1]),
        .Q(BUS9149[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [2]),
        .Q(BUS9149[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [3]),
        .Q(BUS9149[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [4]),
        .Q(BUS9149[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [5]),
        .Q(BUS9149[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3_reg[6]_0 [6]),
        .Q(BUS9149[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[0]_i_3 
       (.I0(\seg_out_reg[6] [0]),
        .I1(BUS9149[0]),
        .I2(seg_select__0[1]),
        .I3(BUS9141[0]),
        .I4(seg_select__0[0]),
        .I5(BUS9133[0]),
        .O(\seg0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[1]_i_3 
       (.I0(\seg_out_reg[6] [1]),
        .I1(BUS9149[1]),
        .I2(seg_select__0[1]),
        .I3(BUS9141[1]),
        .I4(seg_select__0[0]),
        .I5(BUS9133[1]),
        .O(\seg0_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[2]_i_3 
       (.I0(\seg_out_reg[6] [2]),
        .I1(BUS9149[2]),
        .I2(seg_select__0[1]),
        .I3(BUS9141[2]),
        .I4(seg_select__0[0]),
        .I5(BUS9133[2]),
        .O(\seg0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[3]_i_3 
       (.I0(\seg_out_reg[6] [3]),
        .I1(BUS9149[3]),
        .I2(seg_select__0[1]),
        .I3(BUS9141[3]),
        .I4(seg_select__0[0]),
        .I5(BUS9133[3]),
        .O(\seg0_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[4]_i_3 
       (.I0(\seg_out_reg[6] [4]),
        .I1(BUS9149[4]),
        .I2(seg_select__0[1]),
        .I3(BUS9141[4]),
        .I4(seg_select__0[0]),
        .I5(BUS9133[4]),
        .O(\seg0_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[5]_i_3 
       (.I0(\seg_out_reg[6] [5]),
        .I1(BUS9149[5]),
        .I2(seg_select__0[1]),
        .I3(BUS9141[5]),
        .I4(seg_select__0[0]),
        .I5(BUS9133[5]),
        .O(\seg0_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_out[6]_i_4 
       (.I0(\seg_out_reg[6] [6]),
        .I1(BUS9149[6]),
        .I2(seg_select__0[1]),
        .I3(BUS9141[6]),
        .I4(seg_select__0[0]),
        .I5(BUS9133[6]),
        .O(\seg0_reg[6]_0 ));
endmodule

module Minute_counter
   (COUNT_reg_bb0,
    COUNT_reg_bb1,
    COUNT_reg_bb2,
    CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_3 ,
    \COUNT_reg[0]_4 ,
    \COUNT_reg[0]_5 ,
    NET7780,
    AR,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_3 ;
  input \COUNT_reg[0]_4 ;
  input \COUNT_reg[0]_5 ;
  input NET7780;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0]_1 ;
  output [6:0]\COUNT_reg[0]_2 ;
  output COUNT_reg_bb0;
  inout COUNT_reg_bb1;
  input COUNT_reg_bb2;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:0]\^COUNT_reg ;
  wire \COUNT_reg[0]_0 ;
  wire [6:0]\COUNT_reg[0]_1 ;
  wire [6:0]\COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire \COUNT_reg[0]_4 ;
  wire \COUNT_reg[0]_5 ;
  wire NET7780;
  wire unit_min_n_0;
  wire unit_min_n_8;

  assign COUNT_reg_bb0 = \^COUNT_reg [0];
  assign \^COUNT_reg [2] = COUNT_reg_bb2;
  Counter_3 tens_min
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (\^COUNT_reg [0]),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[0]_3 (unit_min_n_8),
        .\COUNT_reg[0]_4 (\COUNT_reg[0]_3 ),
        .\COUNT_reg[0]_5 (\COUNT_reg[0]_5 ),
        .\COUNT_reg[2]_0 (\^COUNT_reg [2]),
        .\COUNT_reg[2]_1 (unit_min_n_0),
        .NET7780(NET7780));
  Counter_4 unit_min
       (.AR(AR),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[0]_1 (unit_min_n_8),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_4 ),
        .\COUNT_reg[2]_0 (\COUNT_reg[0]_3 ),
        .\COUNT_reg[3]_0 (unit_min_n_0));
endmodule

(* ORIG_REF_NAME = "Minute_counter" *) 
module Minute_counter_5
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    COUNT_reg,
    END,
    En_reg,
    En_reg_0,
    En_reg_1,
    En_reg_2,
    NET7808,
    AR,
    \COUNT_reg[0] ,
    \COUNT_reg[0]_0 );
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[0]_2 ;
  input [2:2]COUNT_reg;
  input END;
  output En_reg;
  input En_reg_0;
  input En_reg_1;
  input En_reg_2;
  input NET7808;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0] ;
  output [6:0]\COUNT_reg[0]_0 ;

  wire [0:0]AR;
  wire [0:0]BUS14456;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:2]COUNT_reg;
  wire [6:0]\COUNT_reg[0] ;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire END;
  wire En_reg;
  wire En_reg_0;
  wire En_reg_1;
  wire En_reg_2;
  wire NET7808;
  wire tens_min_n_0;
  wire tens_min_n_9;
  wire unit_min_n_0;
  wire unit_min_n_8;

  Counter_9 tens_min
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (BUS14456),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_2 (unit_min_n_8),
        .\COUNT_reg[0]_3 (En_reg_0),
        .\COUNT_reg[0]_4 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[1]_0 (tens_min_n_0),
        .\COUNT_reg[1]_1 (tens_min_n_9),
        .\COUNT_reg[2]_0 (COUNT_reg),
        .\COUNT_reg[2]_1 (unit_min_n_0),
        .NET7808(NET7808));
  Counter_10 unit_min
       (.AR(AR),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (\COUNT_reg[0] ),
        .\COUNT_reg[0]_1 (unit_min_n_8),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[3]_0 (unit_min_n_0),
        .END(END),
        .En_reg(En_reg),
        .En_reg_0(En_reg_0),
        .En_reg_1(tens_min_n_9),
        .En_reg_2(BUS14456),
        .En_reg_3(En_reg_1),
        .En_reg_4(tens_min_n_0),
        .En_reg_5(En_reg_2));
endmodule

module Overflow_Handler
   (CE_IBUF,
    CLK_IBUF_BUFG,
    END,
    En1,
    En2,
    En_reg_0,
    SELECT_IBUF,
    STOP_IBUF,
    AR);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  output END;
  output En1;
  output En2;
  input En_reg_0;
  input SELECT_IBUF;
  input STOP_IBUF;
  input [0:0]AR;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire END;
  wire En1;
  wire En2;
  wire En_reg_0;
  wire SELECT_IBUF;
  wire STOP_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    En1_i_1
       (.I0(SELECT_IBUF),
        .I1(END),
        .I2(STOP_IBUF),
        .I3(CE_IBUF),
        .O(En1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    En2_i_1
       (.I0(END),
        .I1(SELECT_IBUF),
        .I2(STOP_IBUF),
        .I3(CE_IBUF),
        .O(En2));
  FDCE #(
    .INIT(1'b0)) 
    En_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(En_reg_0),
        .Q(END));
endmodule

module Prescaler
   (CE,
    CE_IBUF,
    CLK_IBUF_BUFG,
    \Divider_reg[15]_0 ,
    AR);
  output CE;
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  output \Divider_reg[15]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CE;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [26:0]Divider;
  wire Divider0_carry__0_n_0;
  wire Divider0_carry__1_n_0;
  wire Divider0_carry__2_n_0;
  wire Divider0_carry__3_n_0;
  wire Divider0_carry__4_n_0;
  wire Divider0_carry_n_0;
  wire \Divider[26]_i_3_n_0 ;
  wire \Divider[26]_i_4_n_0 ;
  wire \Divider[26]_i_5_n_0 ;
  wire \Divider[26]_i_6_n_0 ;
  wire \Divider[26]_i_7_n_0 ;
  wire \Divider[26]_i_8_n_0 ;
  wire \Divider[26]_i_9_n_0 ;
  wire \Divider_reg[15]_0 ;
  wire [26:0]Divider_reg_n_0_;
  wire [26:1]data0;
  wire [2:0]NLW_Divider0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_Divider0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_Divider0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_Divider0_carry__5_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0002)) 
    \COUNT[2]_i_2__2 
       (.I0(CE_IBUF),
        .I1(\Divider[26]_i_5_n_0 ),
        .I2(\Divider[26]_i_4_n_0 ),
        .I3(\Divider[26]_i_3_n_0 ),
        .O(CE));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Divider0_carry
       (.CI(1'b0),
        .CO({Divider0_carry_n_0,NLW_Divider0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Divider_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Divider_reg_n_0_[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Divider0_carry__0
       (.CI(Divider0_carry_n_0),
        .CO({Divider0_carry__0_n_0,NLW_Divider0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Divider_reg_n_0_[8:5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Divider0_carry__1
       (.CI(Divider0_carry__0_n_0),
        .CO({Divider0_carry__1_n_0,NLW_Divider0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(Divider_reg_n_0_[12:9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Divider0_carry__2
       (.CI(Divider0_carry__1_n_0),
        .CO({Divider0_carry__2_n_0,NLW_Divider0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(Divider_reg_n_0_[16:13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Divider0_carry__3
       (.CI(Divider0_carry__2_n_0),
        .CO({Divider0_carry__3_n_0,NLW_Divider0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(Divider_reg_n_0_[20:17]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Divider0_carry__4
       (.CI(Divider0_carry__3_n_0),
        .CO({Divider0_carry__4_n_0,NLW_Divider0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(Divider_reg_n_0_[24:21]));
  (* OPT_MODIFIED = "SWEEP" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[10]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[10]),
        .O(Divider[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[11]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[11]),
        .O(Divider[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[12]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[12]),
        .O(Divider[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[13]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[13]),
        .O(Divider[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[14]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[14]),
        .O(Divider[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[15]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[15]),
        .O(Divider[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[16]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[16]),
        .O(Divider[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[17]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[17]),
        .O(Divider[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[18]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[18]),
        .O(Divider[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[19]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[19]),
        .O(Divider[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[1]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[1]),
        .O(Divider[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[20]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[20]),
        .O(Divider[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[21]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[21]),
        .O(Divider[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[22]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[22]),
        .O(Divider[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[23]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[23]),
        .O(Divider[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[24]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[24]),
        .O(Divider[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[25]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[25]),
        .O(Divider[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[26]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[26]),
        .O(Divider[26]));
  LUT3 #(
    .INIT(8'hFE)) 
    \Divider[26]_i_2 
       (.I0(\Divider[26]_i_3_n_0 ),
        .I1(\Divider[26]_i_4_n_0 ),
        .I2(\Divider[26]_i_5_n_0 ),
        .O(\Divider_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \Divider[26]_i_3 
       (.I0(Divider_reg_n_0_[15]),
        .I1(Divider_reg_n_0_[16]),
        .I2(Divider_reg_n_0_[13]),
        .I3(Divider_reg_n_0_[14]),
        .I4(\Divider[26]_i_6_n_0 ),
        .O(\Divider[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \Divider[26]_i_4 
       (.I0(Divider_reg_n_0_[8]),
        .I1(Divider_reg_n_0_[7]),
        .I2(Divider_reg_n_0_[5]),
        .I3(Divider_reg_n_0_[6]),
        .I4(\Divider[26]_i_7_n_0 ),
        .O(\Divider[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \Divider[26]_i_5 
       (.I0(Divider_reg_n_0_[26]),
        .I1(Divider_reg_n_0_[25]),
        .I2(Divider_reg_n_0_[0]),
        .I3(\Divider[26]_i_8_n_0 ),
        .I4(\Divider[26]_i_9_n_0 ),
        .O(\Divider[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \Divider[26]_i_6 
       (.I0(Divider_reg_n_0_[18]),
        .I1(Divider_reg_n_0_[17]),
        .I2(Divider_reg_n_0_[20]),
        .I3(Divider_reg_n_0_[19]),
        .O(\Divider[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Divider[26]_i_7 
       (.I0(Divider_reg_n_0_[10]),
        .I1(Divider_reg_n_0_[9]),
        .I2(Divider_reg_n_0_[12]),
        .I3(Divider_reg_n_0_[11]),
        .O(\Divider[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Divider[26]_i_8 
       (.I0(Divider_reg_n_0_[22]),
        .I1(Divider_reg_n_0_[21]),
        .I2(Divider_reg_n_0_[24]),
        .I3(Divider_reg_n_0_[23]),
        .O(\Divider[26]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Divider[26]_i_9 
       (.I0(Divider_reg_n_0_[2]),
        .I1(Divider_reg_n_0_[1]),
        .I2(Divider_reg_n_0_[4]),
        .I3(Divider_reg_n_0_[3]),
        .O(\Divider[26]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[2]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[2]),
        .O(Divider[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[3]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[3]),
        .O(Divider[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[4]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[4]),
        .O(Divider[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[5]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[5]),
        .O(Divider[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[6]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[6]),
        .O(Divider[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[7]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[7]),
        .O(Divider[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[8]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[8]),
        .O(Divider[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[9]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[9]),
        .O(Divider[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[0]),
        .Q(Divider_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[10]),
        .Q(Divider_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[11]),
        .Q(Divider_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[12]),
        .Q(Divider_reg_n_0_[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[13]),
        .Q(Divider_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[14]),
        .Q(Divider_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[15]),
        .Q(Divider_reg_n_0_[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[16]),
        .Q(Divider_reg_n_0_[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[17]),
        .Q(Divider_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[18]),
        .Q(Divider_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[19]),
        .Q(Divider_reg_n_0_[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[1]),
        .Q(Divider_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[20]),
        .Q(Divider_reg_n_0_[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[21]),
        .Q(Divider_reg_n_0_[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[22]),
        .Q(Divider_reg_n_0_[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[23]),
        .Q(Divider_reg_n_0_[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[24]),
        .Q(Divider_reg_n_0_[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[25]),
        .Q(Divider_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[26]),
        .Q(Divider_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[2]),
        .Q(Divider_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[3]),
        .Q(Divider_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[4]),
        .Q(Divider_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[5]),
        .Q(Divider_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[6]),
        .Q(Divider_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[7]),
        .Q(Divider_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[8]),
        .Q(Divider_reg_n_0_[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[9]),
        .Q(Divider_reg_n_0_[9]));
endmodule

module Second_counter
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    COUNT_reg,
    ENABLE1,
    En1_reg,
    NET7772,
    AR,
    \COUNT_reg[0] ,
    D);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input [2:2]COUNT_reg;
  input ENABLE1;
  output En1_reg;
  input NET7772;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0] ;
  output [6:0]D;

  wire [0:0]AR;
  wire [3:3]BUS14424;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:2]COUNT_reg;
  wire [6:0]\COUNT_reg[0] ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]D;
  wire ENABLE1;
  wire En1_reg;
  wire NET7772;
  wire unit_sec_n_8;
  wire unit_sec_n_9;

  Counter tens_sec
       (.AR(AR),
        .BUS14424(BUS14424),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (\COUNT_reg[0] ),
        .\COUNT_reg[0]_1 (unit_sec_n_9),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[2]_0 (COUNT_reg),
        .\COUNT_reg[2]_1 (unit_sec_n_8),
        .ENABLE1(ENABLE1),
        .En1_reg(En1_reg),
        .NET7772(NET7772));
  Counter_2 unit_sec
       (.AR(AR),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[2]_0 (unit_sec_n_9),
        .\COUNT_reg[3]_0 (BUS14424),
        .\COUNT_reg[3]_1 (unit_sec_n_8),
        .D(D),
        .ENABLE1(ENABLE1));
endmodule

(* ORIG_REF_NAME = "Second_counter" *) 
module Second_counter_6
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    COUNT_reg,
    ENABLE2,
    En2_reg,
    NET7792,
    AR,
    \COUNT_reg[0] ,
    D);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input [2:2]COUNT_reg;
  input ENABLE2;
  output En2_reg;
  input NET7792;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0] ;
  output [6:0]D;

  wire [0:0]AR;
  wire [3:3]BUS14448;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:2]COUNT_reg;
  wire [6:0]\COUNT_reg[0] ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]D;
  wire ENABLE2;
  wire En2_reg;
  wire NET7792;
  wire unit_sec_n_8;
  wire unit_sec_n_9;

  Counter_7 tens_sec
       (.AR(AR),
        .BUS14448(BUS14448),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (\COUNT_reg[0] ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[2]_0 (COUNT_reg),
        .\COUNT_reg[2]_1 (unit_sec_n_8),
        .ENABLE2(ENABLE2),
        .En2_reg(En2_reg),
        .En_reg(unit_sec_n_9),
        .NET7792(NET7792));
  Counter_8 unit_sec
       (.AR(AR),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[2]_0 (unit_sec_n_9),
        .\COUNT_reg[3]_0 (BUS14448),
        .\COUNT_reg[3]_1 (unit_sec_n_8),
        .D(D),
        .ENABLE2(ENABLE2));
endmodule

module Seven_seg_driver
   (CE_IBUF,
    CLK_IBUF_BUFG,
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
    AR,
    \FSM_sequential_seg_select_reg[1]_0 ,
    Q,
    seg_select_OBUF);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
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
  input [0:0]AR;
  output [1:0]\FSM_sequential_seg_select_reg[1]_0 ;
  output [6:0]Q;
  output [7:0]seg_select_OBUF;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire \FSM_sequential_seg_select[0]_i_1_n_0 ;
  wire \FSM_sequential_seg_select[1]_i_1_n_0 ;
  wire \FSM_sequential_seg_select[2]_i_1_n_0 ;
  wire [1:0]\FSM_sequential_seg_select_reg[1]_0 ;
  wire [6:0]Q;
  wire [9:0]counter;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[1]_i_4_n_0 ;
  wire \counter[1]_i_5_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter[9]_i_3_n_0 ;
  wire [1:0]counter__70;
  wire [9:0]p_0_in;
  wire \seg_out[6]_i_1_n_0 ;
  wire \seg_out_reg[0]_0 ;
  wire \seg_out_reg[0]_1 ;
  wire \seg_out_reg[0]_i_1_n_0 ;
  wire \seg_out_reg[1]_0 ;
  wire \seg_out_reg[1]_1 ;
  wire \seg_out_reg[1]_i_1_n_0 ;
  wire \seg_out_reg[2]_0 ;
  wire \seg_out_reg[2]_1 ;
  wire \seg_out_reg[2]_i_1_n_0 ;
  wire \seg_out_reg[3]_0 ;
  wire \seg_out_reg[3]_1 ;
  wire \seg_out_reg[3]_i_1_n_0 ;
  wire \seg_out_reg[4]_0 ;
  wire \seg_out_reg[4]_1 ;
  wire \seg_out_reg[4]_i_1_n_0 ;
  wire \seg_out_reg[5]_0 ;
  wire \seg_out_reg[5]_1 ;
  wire \seg_out_reg[5]_i_1_n_0 ;
  wire \seg_out_reg[6]_0 ;
  wire \seg_out_reg[6]_1 ;
  wire \seg_out_reg[6]_i_2_n_0 ;
  wire [7:0]seg_select_OBUF;
  wire [2:2]seg_select__0;

  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_seg_select[0]_i_1 
       (.I0(\seg_out[6]_i_1_n_0 ),
        .I1(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .O(\FSM_sequential_seg_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_seg_select[1]_i_1 
       (.I0(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .I1(\seg_out[6]_i_1_n_0 ),
        .I2(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .O(\FSM_sequential_seg_select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSM_sequential_seg_select[2]_i_1 
       (.I0(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .I1(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .I2(\seg_out[6]_i_1_n_0 ),
        .I3(seg_select__0),
        .O(\FSM_sequential_seg_select[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_seg_select_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_seg_select[0]_i_1_n_0 ),
        .Q(\FSM_sequential_seg_select_reg[1]_0 [0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_seg_select_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_seg_select[1]_i_1_n_0 ),
        .Q(\FSM_sequential_seg_select_reg[1]_0 [1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_seg_select_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_seg_select[2]_i_1_n_0 ),
        .Q(seg_select__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_2_n_0 ),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[0]_i_2 
       (.I0(counter[6]),
        .I1(counter[7]),
        .I2(counter[4]),
        .I3(counter[5]),
        .I4(counter[9]),
        .I5(counter[8]),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter__70[0]),
        .I1(counter__70[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \counter[1]_i_2 
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(\counter[1]_i_4_n_0 ),
        .I3(counter[6]),
        .I4(counter[9]),
        .I5(counter[0]),
        .O(counter__70[0]));
  LUT6 #(
    .INIT(64'hF7FFFFFF80000000)) 
    \counter[1]_i_3 
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(\counter[1]_i_5_n_0 ),
        .I3(counter[6]),
        .I4(counter[9]),
        .I5(counter[1]),
        .O(counter__70[1]));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[1]_i_4 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(counter[0]),
        .O(\counter[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[1]_i_5 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[3]),
        .I5(counter[1]),
        .O(\counter[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[3]),
        .I5(counter[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \counter[6]_i_1 
       (.I0(counter[5]),
        .I1(counter[3]),
        .I2(\counter[6]_i_2_n_0 ),
        .I3(counter[2]),
        .I4(counter[4]),
        .I5(counter[6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[6]_i_2 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(counter[6]),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(counter[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \counter[8]_i_1 
       (.I0(counter[7]),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(counter[6]),
        .I3(counter[8]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[9]_i_1 
       (.I0(CE_IBUF),
        .I1(AR),
        .O(\counter[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \counter[9]_i_2 
       (.I0(counter[8]),
        .I1(counter[6]),
        .I2(\counter[9]_i_3_n_0 ),
        .I3(counter[7]),
        .I4(counter[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[9]_i_3 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[3]),
        .I5(counter[5]),
        .O(\counter[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \seg_out[6]_i_1 
       (.I0(CE_IBUF),
        .I1(counter[9]),
        .I2(counter[8]),
        .I3(counter[6]),
        .I4(\counter[9]_i_3_n_0 ),
        .I5(counter[7]),
        .O(\seg_out[6]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \seg_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .D(\seg_out_reg[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[0]));
  MUXF7 \seg_out_reg[0]_i_1 
       (.I0(\seg_out_reg[0]_0 ),
        .I1(\seg_out_reg[0]_1 ),
        .O(\seg_out_reg[0]_i_1_n_0 ),
        .S(seg_select__0));
  FDPE #(
    .INIT(1'b1)) 
    \seg_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .D(\seg_out_reg[1]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[1]));
  MUXF7 \seg_out_reg[1]_i_1 
       (.I0(\seg_out_reg[1]_0 ),
        .I1(\seg_out_reg[1]_1 ),
        .O(\seg_out_reg[1]_i_1_n_0 ),
        .S(seg_select__0));
  FDPE #(
    .INIT(1'b1)) 
    \seg_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .D(\seg_out_reg[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[2]));
  MUXF7 \seg_out_reg[2]_i_1 
       (.I0(\seg_out_reg[2]_0 ),
        .I1(\seg_out_reg[2]_1 ),
        .O(\seg_out_reg[2]_i_1_n_0 ),
        .S(seg_select__0));
  FDPE #(
    .INIT(1'b1)) 
    \seg_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .D(\seg_out_reg[3]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[3]));
  MUXF7 \seg_out_reg[3]_i_1 
       (.I0(\seg_out_reg[3]_0 ),
        .I1(\seg_out_reg[3]_1 ),
        .O(\seg_out_reg[3]_i_1_n_0 ),
        .S(seg_select__0));
  FDPE #(
    .INIT(1'b1)) 
    \seg_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .D(\seg_out_reg[4]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[4]));
  MUXF7 \seg_out_reg[4]_i_1 
       (.I0(\seg_out_reg[4]_0 ),
        .I1(\seg_out_reg[4]_1 ),
        .O(\seg_out_reg[4]_i_1_n_0 ),
        .S(seg_select__0));
  FDPE #(
    .INIT(1'b1)) 
    \seg_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .D(\seg_out_reg[5]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[5]));
  MUXF7 \seg_out_reg[5]_i_1 
       (.I0(\seg_out_reg[5]_0 ),
        .I1(\seg_out_reg[5]_1 ),
        .O(\seg_out_reg[5]_i_1_n_0 ),
        .S(seg_select__0));
  FDPE #(
    .INIT(1'b1)) 
    \seg_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\seg_out[6]_i_1_n_0 ),
        .D(\seg_out_reg[6]_i_2_n_0 ),
        .PRE(AR),
        .Q(Q[6]));
  MUXF7 \seg_out_reg[6]_i_2 
       (.I0(\seg_out_reg[6]_0 ),
        .I1(\seg_out_reg[6]_1 ),
        .O(\seg_out_reg[6]_i_2_n_0 ),
        .S(seg_select__0));
  LUT3 #(
    .INIT(8'hFE)) 
    \seg_select_OBUF[0]_inst_i_1 
       (.I0(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .I1(seg_select__0),
        .I2(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .O(seg_select_OBUF[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \seg_select_OBUF[1]_inst_i_1 
       (.I0(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .I1(seg_select__0),
        .I2(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .O(seg_select_OBUF[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \seg_select_OBUF[2]_inst_i_1 
       (.I0(seg_select__0),
        .I1(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .I2(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .O(seg_select_OBUF[2]));
  LUT3 #(
    .INIT(8'hF7)) 
    \seg_select_OBUF[3]_inst_i_1 
       (.I0(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .I1(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .I2(seg_select__0),
        .O(seg_select_OBUF[3]));
  LUT3 #(
    .INIT(8'hEF)) 
    \seg_select_OBUF[4]_inst_i_1 
       (.I0(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .I1(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .I2(seg_select__0),
        .O(seg_select_OBUF[4]));
  LUT3 #(
    .INIT(8'hF7)) 
    \seg_select_OBUF[5]_inst_i_1 
       (.I0(seg_select__0),
        .I1(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .I2(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .O(seg_select_OBUF[5]));
  LUT3 #(
    .INIT(8'hF7)) 
    \seg_select_OBUF[6]_inst_i_1 
       (.I0(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .I1(seg_select__0),
        .I2(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .O(seg_select_OBUF[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \seg_select_OBUF[7]_inst_i_1 
       (.I0(seg_select__0),
        .I1(\FSM_sequential_seg_select_reg[1]_0 [0]),
        .I2(\FSM_sequential_seg_select_reg[1]_0 [1]),
        .O(seg_select_OBUF[7]));
endmodule

module Switch
   (CE_IBUF,
    CLK_IBUF_BUFG,
    COUNT_reg,
    ENABLE1,
    ENABLE2,
    En1,
    En1_reg_0,
    En2,
    En2_reg_0,
    NET7768,
    NET7784,
    AR);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input [0:0]COUNT_reg;
  output ENABLE1;
  output ENABLE2;
  input En1;
  output En1_reg_0;
  input En2;
  output En2_reg_0;
  input NET7768;
  input NET7784;
  input [0:0]AR;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [0:0]COUNT_reg;
  wire ENABLE1;
  wire ENABLE2;
  wire En1;
  wire En1_reg_0;
  wire En2;
  wire En2_reg_0;
  wire NET7768;
  wire NET7784;

  LUT4 #(
    .INIT(16'h00E0)) 
    \COUNT[3]_i_1__1 
       (.I0(ENABLE1),
        .I1(NET7768),
        .I2(CE_IBUF),
        .I3(COUNT_reg),
        .O(En1_reg_0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \COUNT[3]_i_1__2 
       (.I0(ENABLE2),
        .I1(NET7784),
        .I2(CE_IBUF),
        .I3(COUNT_reg),
        .O(En2_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    En1_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(En1),
        .Q(ENABLE1));
  FDCE #(
    .INIT(1'b0)) 
    En2_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(En2),
        .Q(ENABLE2));
endmodule

module Timer_Clock
   (CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    \COUNT_reg[0]_4 ,
    COUNT_reg,
    ENABLE2,
    END,
    En2_reg,
    En_reg,
    En_reg_0,
    En_reg_1,
    NET7792,
    NET7808,
    AR,
    \COUNT_reg[0] ,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    D);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input \COUNT_reg[0]_2 ;
  input \COUNT_reg[0]_3 ;
  input \COUNT_reg[0]_4 ;
  input [2:2]COUNT_reg;
  input ENABLE2;
  input END;
  output En2_reg;
  output En_reg;
  input En_reg_0;
  input En_reg_1;
  input NET7792;
  input NET7808;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0] ;
  output [6:0]\COUNT_reg[0]_0 ;
  output [6:0]\COUNT_reg[0]_1 ;
  output [6:0]D;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:2]COUNT_reg;
  wire [6:0]\COUNT_reg[0] ;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire [6:0]\COUNT_reg[0]_1 ;
  wire \COUNT_reg[0]_2 ;
  wire \COUNT_reg[0]_3 ;
  wire \COUNT_reg[0]_4 ;
  wire [6:0]D;
  wire ENABLE2;
  wire END;
  wire En2_reg;
  wire En_reg;
  wire En_reg_0;
  wire En_reg_1;
  wire NET7792;
  wire NET7808;

  Minute_counter_5 min
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg(COUNT_reg),
        .\COUNT_reg[0] (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_4 ),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_3 ),
        .END(END),
        .En_reg(En_reg),
        .En_reg_0(En2_reg),
        .En_reg_1(En_reg_0),
        .En_reg_2(En_reg_1),
        .NET7808(NET7808));
  Second_counter_6 sec
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg(COUNT_reg),
        .\COUNT_reg[0] (\COUNT_reg[0] ),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_3 ),
        .D(D),
        .ENABLE2(ENABLE2),
        .En2_reg(En2_reg),
        .NET7792(NET7792));
endmodule

(* ORIG_REF_NAME = "Timer_Clock" *) 
module Timer_Clock_1
   (COUNT_reg_bb0,
    COUNT_reg_bb1,
    COUNT_reg_bb2,
    CE_IBUF,
    CLK_IBUF_BUFG,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_4 ,
    \COUNT_reg[0]_5 ,
    \COUNT_reg[0]_6 ,
    ENABLE1,
    En1_reg,
    NET7772,
    NET7780,
    AR,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[0]_2 ,
    \COUNT_reg[0]_3 ,
    D);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_4 ;
  input \COUNT_reg[0]_5 ;
  input \COUNT_reg[0]_6 ;
  input ENABLE1;
  output En1_reg;
  input NET7772;
  input NET7780;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0]_1 ;
  output [6:0]\COUNT_reg[0]_2 ;
  output [6:0]\COUNT_reg[0]_3 ;
  output [6:0]D;
  output COUNT_reg_bb0;
  inout COUNT_reg_bb1;
  input COUNT_reg_bb2;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:0]\^COUNT_reg ;
  wire \COUNT_reg[0]_0 ;
  wire [6:0]\COUNT_reg[0]_1 ;
  wire [6:0]\COUNT_reg[0]_2 ;
  wire [6:0]\COUNT_reg[0]_3 ;
  wire \COUNT_reg[0]_4 ;
  wire \COUNT_reg[0]_5 ;
  wire \COUNT_reg[0]_6 ;
  wire [6:0]D;
  wire ENABLE1;
  wire En1_reg;
  wire NET7772;
  wire NET7780;
  wire [1:1]NLW_min_COUNT_reg_UNCONNECTED;

  assign COUNT_reg_bb0 = \^COUNT_reg [0];
  assign \^COUNT_reg [2] = COUNT_reg_bb2;
  Minute_counter min
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg_bb2(\^COUNT_reg [2]),
        .COUNT_reg_bb0(\^COUNT_reg [0]),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_2 ),
        .\COUNT_reg[0]_2 (\COUNT_reg[0]_3 ),
        .\COUNT_reg[0]_3 (En1_reg),
        .\COUNT_reg[0]_4 (\COUNT_reg[0]_6 ),
        .\COUNT_reg[0]_5 (\COUNT_reg[0]_5 ),
        .NET7780(NET7780));
  Second_counter sec
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg(\^COUNT_reg [2]),
        .\COUNT_reg[0] (\COUNT_reg[0]_1 ),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_4 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_5 ),
        .D(D),
        .ENABLE1(ENABLE1),
        .En1_reg(En1_reg),
        .NET7772(NET7772));
endmodule

module Timer_Setter
   (CE_IBUF,
    CLK_IBUF_BUFG,
    COUNT_reg,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
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
    NET7780,
    NET7784,
    NET7792,
    NET7808,
    STOP_IBUF,
    Set_Impulse_IBUF,
    r_D3_reg_0,
    r_D7_reg_0,
    AR);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input [0:0]COUNT_reg;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
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
  output NET7780;
  output NET7784;
  output NET7792;
  output NET7808;
  input STOP_IBUF;
  input Set_Impulse_IBUF;
  output r_D3_reg_0;
  output r_D7_reg_0;
  input [0:0]AR;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire [0:0]COUNT_reg;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
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
  wire r_D3_reg_0;
  wire r_D4;
  wire r_D5;
  wire r_D6;
  wire r_D7;
  wire r_D7_reg_0;
  wire r_D8;

  LUT4 #(
    .INIT(16'h0C08)) 
    \COUNT[3]_i_1 
       (.I0(NET7776),
        .I1(CE_IBUF),
        .I2(COUNT_reg),
        .I3(\COUNT_reg[0]_0 ),
        .O(r_D3_reg_0));
  LUT4 #(
    .INIT(16'h0C08)) 
    \COUNT[3]_i_1__0 
       (.I0(NET7800),
        .I1(CE_IBUF),
        .I2(COUNT_reg),
        .I3(\COUNT_reg[0]_1 ),
        .O(r_D7_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D1_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D1_IBUF),
        .O(r_D1));
  FDCE #(
    .INIT(1'b0)) 
    r_D1_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D1),
        .Q(NET7768));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D2_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D2_IBUF),
        .O(r_D2));
  FDCE #(
    .INIT(1'b0)) 
    r_D2_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D2),
        .Q(NET7772));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D3_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D3_IBUF),
        .O(r_D3));
  FDCE #(
    .INIT(1'b0)) 
    r_D3_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D3),
        .Q(NET7776));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D4_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D4_IBUF),
        .O(r_D4));
  FDCE #(
    .INIT(1'b0)) 
    r_D4_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D4),
        .Q(NET7780));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D5_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D5_IBUF),
        .O(r_D5));
  FDCE #(
    .INIT(1'b0)) 
    r_D5_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D5),
        .Q(NET7784));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D6_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D6_IBUF),
        .O(r_D6));
  FDCE #(
    .INIT(1'b0)) 
    r_D6_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D6),
        .Q(NET7792));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D7_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D7_IBUF),
        .O(r_D7));
  FDCE #(
    .INIT(1'b0)) 
    r_D7_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D7),
        .Q(NET7800));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_D8_i_1
       (.I0(Set_Impulse_IBUF),
        .I1(STOP_IBUF),
        .I2(D8_IBUF),
        .O(r_D8));
  FDCE #(
    .INIT(1'b0)) 
    r_D8_reg
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D8),
        .Q(NET7808));
endmodule

(* ECO_CHECKSUM = "a8183675" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
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

  wire [6:0]BUS1178;
  wire [6:0]BUS9125;
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
  wire END;
  wire En1;
  wire En2;
  wire NET7768;
  wire NET7772;
  wire NET7780;
  wire NET7784;
  wire NET7792;
  wire NET7808;
  wire SELECT;
  wire SELECT_IBUF;
  wire STOP;
  wire STOP_IBUF;
  wire Set_Impulse;
  wire Set_Impulse_IBUF;
  wire U10_n_0;
  wire U10_n_1;
  wire U10_n_2;
  wire U10_n_3;
  wire U10_n_4;
  wire U10_n_5;
  wire U10_n_6;
  wire U11_n_0;
  wire U11_n_1;
  wire U11_n_2;
  wire U11_n_3;
  wire U11_n_4;
  wire U11_n_5;
  wire U11_n_6;
  wire U16_n_6;
  wire U16_n_7;
  wire U18_n_0;
  wire U18_n_1;
  wire U19_n_2;
  wire U19_n_3;
  wire U4_n_0;
  wire U4_n_1;
  wire U4_n_10;
  wire U4_n_11;
  wire U4_n_12;
  wire U4_n_13;
  wire U4_n_14;
  wire U4_n_15;
  wire U4_n_16;
  wire U4_n_17;
  wire U4_n_18;
  wire U4_n_19;
  wire U4_n_2;
  wire U4_n_20;
  wire U4_n_21;
  wire U4_n_22;
  wire U4_n_23;
  wire U4_n_24;
  wire U4_n_25;
  wire U4_n_26;
  wire U4_n_27;
  wire U4_n_28;
  wire U4_n_29;
  wire U4_n_3;
  wire U4_n_4;
  wire U4_n_5;
  wire U4_n_6;
  wire U4_n_7;
  wire U4_n_8;
  wire U4_n_9;
  wire U9_n_10;
  wire U9_n_24;
  wire U9_n_7;
  wire U9_n_8;
  wire U9_n_9;
  wire [5:0]reverse0_return;
  wire [6:0]reverse1_return;
  wire [5:0]reverse2_return;
  wire [6:0]reverse_return;
  wire [6:0]seg_out;
  wire [6:0]seg_out_OBUF;
  wire [7:0]seg_select;
  wire [7:0]seg_select_OBUF;
  wire [1:0]seg_select__0;
  wire [1:1]NLW_U9_COUNT_reg_UNCONNECTED;

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
  Decoder U10
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(reverse_return),
        .Q(BUS9125),
        .\seg0_reg[0]_0 (U10_n_0),
        .\seg0_reg[1]_0 (U10_n_1),
        .\seg0_reg[2]_0 (U10_n_2),
        .\seg0_reg[3]_0 (U10_n_3),
        .\seg0_reg[4]_0 (U10_n_4),
        .\seg0_reg[5]_0 (U10_n_5),
        .\seg0_reg[6]_0 (U10_n_6),
        .\seg0_reg[6]_1 (BUS1178),
        .\seg1_reg[6]_0 ({U9_n_10,reverse0_return}),
        .\seg2_reg[6]_0 (reverse1_return),
        .\seg3_reg[6]_0 ({U9_n_24,reverse2_return}),
        .seg_select__0(seg_select__0));
  Decoder_0 U11
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({U4_n_0,U4_n_1,U4_n_2,U4_n_3,U4_n_4,U4_n_5,U4_n_6}),
        .Q(BUS9125),
        .\seg0_reg[0]_0 (U11_n_0),
        .\seg0_reg[1]_0 (U11_n_1),
        .\seg0_reg[2]_0 (U11_n_2),
        .\seg0_reg[3]_0 (U11_n_3),
        .\seg0_reg[4]_0 (U11_n_4),
        .\seg0_reg[5]_0 (U11_n_5),
        .\seg0_reg[6]_0 (U11_n_6),
        .\seg1_reg[6]_0 ({U4_n_8,U4_n_9,U4_n_10,U4_n_11,U4_n_12,U4_n_13,U4_n_14}),
        .\seg2_reg[6]_0 ({U4_n_15,U4_n_16,U4_n_17,U4_n_18,U4_n_19,U4_n_20,U4_n_21}),
        .\seg3_reg[6]_0 ({U4_n_22,U4_n_23,U4_n_24,U4_n_25,U4_n_26,U4_n_27,U4_n_28}),
        .\seg_out_reg[6] (BUS1178),
        .seg_select__0(seg_select__0));
  Seven_seg_driver U12
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\FSM_sequential_seg_select_reg[1]_0 (seg_select__0),
        .Q(seg_out_OBUF),
        .\seg_out_reg[0]_0 (U10_n_0),
        .\seg_out_reg[0]_1 (U11_n_0),
        .\seg_out_reg[1]_0 (U10_n_1),
        .\seg_out_reg[1]_1 (U11_n_1),
        .\seg_out_reg[2]_0 (U10_n_2),
        .\seg_out_reg[2]_1 (U11_n_2),
        .\seg_out_reg[3]_0 (U10_n_3),
        .\seg_out_reg[3]_1 (U11_n_3),
        .\seg_out_reg[4]_0 (U10_n_4),
        .\seg_out_reg[4]_1 (U11_n_4),
        .\seg_out_reg[5]_0 (U10_n_5),
        .\seg_out_reg[5]_1 (U11_n_5),
        .\seg_out_reg[6]_0 (U10_n_6),
        .\seg_out_reg[6]_1 (U11_n_6),
        .seg_select_OBUF(seg_select_OBUF));
  Timer_Setter U16
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg(U18_n_0),
        .\COUNT_reg[0]_0 (U9_n_8),
        .\COUNT_reg[0]_1 (U4_n_7),
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
        .NET7780(NET7780),
        .NET7784(NET7784),
        .NET7792(NET7792),
        .NET7808(NET7808),
        .STOP_IBUF(STOP_IBUF),
        .Set_Impulse_IBUF(Set_Impulse_IBUF),
        .r_D3_reg_0(U16_n_6),
        .r_D7_reg_0(U16_n_7));
  Overflow_Handler U17
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .END(END),
        .En1(En1),
        .En2(En2),
        .En_reg_0(U4_n_29),
        .SELECT_IBUF(SELECT_IBUF),
        .STOP_IBUF(STOP_IBUF));
  Prescaler U18
       (.AR(CLR_IBUF),
        .CE(U18_n_1),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Divider_reg[15]_0 (U18_n_0));
  Switch U19
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg(U18_n_0),
        .ENABLE1(ENABLE1),
        .ENABLE2(ENABLE2),
        .En1(En1),
        .En1_reg_0(U19_n_2),
        .En2(En2),
        .En2_reg_0(U19_n_3),
        .NET7768(NET7768),
        .NET7784(NET7784));
  Timer_Clock U4
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg(U18_n_1),
        .\COUNT_reg[0] ({U4_n_8,U4_n_9,U4_n_10,U4_n_11,U4_n_12,U4_n_13,U4_n_14}),
        .\COUNT_reg[0]_0 ({U4_n_15,U4_n_16,U4_n_17,U4_n_18,U4_n_19,U4_n_20,U4_n_21}),
        .\COUNT_reg[0]_1 ({U4_n_22,U4_n_23,U4_n_24,U4_n_25,U4_n_26,U4_n_27,U4_n_28}),
        .\COUNT_reg[0]_2 (U19_n_3),
        .\COUNT_reg[0]_3 (U18_n_0),
        .\COUNT_reg[0]_4 (U16_n_7),
        .D({U4_n_0,U4_n_1,U4_n_2,U4_n_3,U4_n_4,U4_n_5,U4_n_6}),
        .ENABLE2(ENABLE2),
        .END(END),
        .En2_reg(U4_n_7),
        .En_reg(U4_n_29),
        .En_reg_0(U9_n_7),
        .En_reg_1(U9_n_9),
        .NET7792(NET7792),
        .NET7808(NET7808));
  Timer_Clock_1 U9
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COUNT_reg_bb2(U18_n_1),
        .COUNT_reg_bb0(U9_n_7),
        .\COUNT_reg[0]_0 (U9_n_9),
        .\COUNT_reg[0]_1 ({U9_n_10,reverse0_return}),
        .\COUNT_reg[0]_2 (reverse1_return),
        .\COUNT_reg[0]_3 ({U9_n_24,reverse2_return}),
        .\COUNT_reg[0]_4 (U19_n_2),
        .\COUNT_reg[0]_5 (U18_n_0),
        .\COUNT_reg[0]_6 (U16_n_6),
        .D(reverse_return),
        .ENABLE1(ENABLE1),
        .En1_reg(U9_n_8),
        .NET7772(NET7772),
        .NET7780(NET7780));
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

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
