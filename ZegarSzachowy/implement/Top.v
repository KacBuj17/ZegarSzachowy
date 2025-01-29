// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan 29 04:35:07 2025
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
   (CE_IBUF,
    CLK,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2]_1 ,
    COUNT_reg,
    ENABLE1,
    NET7772,
    NET7776,
    NET7780,
    r_D3_reg,
    r_D4_reg,
    AR,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[3]_0 );
  input CE_IBUF;
  input CLK;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[2]_0 ;
  input \COUNT_reg[2]_1 ;
  input [3:3]COUNT_reg;
  input ENABLE1;
  input NET7772;
  input NET7776;
  input NET7780;
  output r_D3_reg;
  output r_D4_reg;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0]_0 ;
  input [1:0]\COUNT_reg[3]_0 ;

  wire [0:0]AR;
  wire [2:0]BUS14432;
  wire CE_IBUF;
  wire CLK;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[1]_i_2_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire \COUNT[2]_i_2__0_n_0 ;
  wire \COUNT[3]_i_3__2_n_0 ;
  wire \COUNT[3]_i_3__3_n_0 ;
  wire [3:3]COUNT_reg;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]_1 ;
  wire [1:0]\COUNT_reg[3]_0 ;
  wire ENABLE1;
  wire NET7772;
  wire NET7776;
  wire NET7780;
  wire r_D3_reg;
  wire r_D4_reg;

  LUT6 #(
    .INIT(64'hF3F3F7FF0C0C0800)) 
    \COUNT[0]_i_1 
       (.I0(ENABLE1),
        .I1(CE_IBUF),
        .I2(\COUNT_reg[0]_1 ),
        .I3(\COUNT_reg[2]_0 ),
        .I4(NET7772),
        .I5(BUS14432[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABFFBBFFA8008800)) 
    \COUNT[1]_i_1 
       (.I0(\COUNT[1]_i_2_n_0 ),
        .I1(NET7772),
        .I2(\COUNT_reg[2]_0 ),
        .I3(\COUNT_reg[2]_1 ),
        .I4(ENABLE1),
        .I5(BUS14432[1]),
        .O(\COUNT[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC2)) 
    \COUNT[1]_i_2 
       (.I0(BUS14432[2]),
        .I1(BUS14432[1]),
        .I2(BUS14432[0]),
        .O(\COUNT[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFFBBFFA8008800)) 
    \COUNT[2]_i_1 
       (.I0(\COUNT[2]_i_2__0_n_0 ),
        .I1(NET7772),
        .I2(\COUNT_reg[2]_0 ),
        .I3(\COUNT_reg[2]_1 ),
        .I4(ENABLE1),
        .I5(BUS14432[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \COUNT[2]_i_2__0 
       (.I0(BUS14432[0]),
        .I1(BUS14432[1]),
        .I2(BUS14432[2]),
        .O(\COUNT[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h3020202020202020)) 
    \COUNT[3]_i_1 
       (.I0(NET7780),
        .I1(\COUNT_reg[0]_1 ),
        .I2(CE_IBUF),
        .I3(ENABLE1),
        .I4(\COUNT[3]_i_3__2_n_0 ),
        .I5(\COUNT_reg[2]_0 ),
        .O(r_D4_reg));
  LUT6 #(
    .INIT(64'h888888C888888888)) 
    \COUNT[3]_i_1__0 
       (.I0(NET7776),
        .I1(\COUNT_reg[2]_1 ),
        .I2(ENABLE1),
        .I3(\COUNT[3]_i_3__3_n_0 ),
        .I4(BUS14432[0]),
        .I5(\COUNT_reg[2]_0 ),
        .O(r_D3_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \COUNT[3]_i_3__2 
       (.I0(BUS14432[1]),
        .I1(BUS14432[2]),
        .I2(COUNT_reg),
        .I3(BUS14432[0]),
        .I4(\COUNT_reg[3]_0 [0]),
        .I5(\COUNT_reg[3]_0 [1]),
        .O(\COUNT[3]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT[3]_i_3__3 
       (.I0(BUS14432[1]),
        .I1(BUS14432[2]),
        .O(\COUNT[3]_i_3__3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14432[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(BUS14432[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14432[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \seg1[0]_i_1__0 
       (.I0(BUS14432[1]),
        .I1(BUS14432[0]),
        .I2(BUS14432[2]),
        .O(\COUNT_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \seg1[1]_i_1 
       (.I0(BUS14432[0]),
        .I1(BUS14432[2]),
        .I2(BUS14432[1]),
        .O(\COUNT_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg1[2]_i_1 
       (.I0(BUS14432[2]),
        .I1(BUS14432[1]),
        .I2(BUS14432[0]),
        .O(\COUNT_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \seg1[3]_i_1__0 
       (.I0(BUS14432[2]),
        .I1(BUS14432[0]),
        .I2(BUS14432[1]),
        .O(\COUNT_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \seg1[4]_i_1 
       (.I0(BUS14432[0]),
        .I1(BUS14432[1]),
        .I2(BUS14432[2]),
        .O(\COUNT_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \seg1[5]_i_1 
       (.I0(BUS14432[1]),
        .I1(BUS14432[0]),
        .I2(BUS14432[2]),
        .O(\COUNT_reg[0]_0 [5]));
  LUT3 #(
    .INIT(8'h83)) 
    \seg1[6]_i_1__0 
       (.I0(BUS14432[0]),
        .I1(BUS14432[2]),
        .I2(BUS14432[1]),
        .O(\COUNT_reg[0]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_10
   (CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[3]_1 ,
    AR,
    \COUNT_reg[2]_0 );
  input CLK;
  output \COUNT_reg[0]_0 ;
  output \COUNT_reg[1]_0 ;
  output \COUNT_reg[3]_0 ;
  input \COUNT_reg[3]_1 ;
  input [0:0]AR;
  output [6:0]\COUNT_reg[2]_0 ;

  wire [0:0]AR;
  wire [2:1]BUS14460;
  wire CLK;
  wire \COUNT[0]_i_1__2_n_0 ;
  wire \COUNT[1]_i_1__2_n_0 ;
  wire \COUNT[2]_i_1__0_n_0 ;
  wire \COUNT[3]_i_2__0_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[1]_0 ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]_1 ;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__2 
       (.I0(\COUNT_reg[0]_0 ),
        .O(\COUNT[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__2 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14460[2]),
        .I2(BUS14460[1]),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hCC98)) 
    \COUNT[2]_i_1__0 
       (.I0(BUS14460[1]),
        .I1(BUS14460[2]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF0E1)) 
    \COUNT[3]_i_2__0 
       (.I0(BUS14460[2]),
        .I1(BUS14460[1]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT[3]_i_4__0 
       (.I0(BUS14460[1]),
        .I1(BUS14460[2]),
        .O(\COUNT_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .D(\COUNT[0]_i_1__2_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1__2_n_0 ),
        .Q(BUS14460[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .CLR(AR),
        .D(\COUNT[2]_i_1__0_n_0 ),
        .Q(BUS14460[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .D(\COUNT[3]_i_2__0_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hCDC2)) 
    \seg2[0]_i_1 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14460[1]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg2[1]_i_1 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(\COUNT_reg[0]_0 ),
        .I2(BUS14460[2]),
        .I3(BUS14460[1]),
        .O(\COUNT_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg2[2]_i_1 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14460[1]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFA86)) 
    \seg2[3]_i_1 
       (.I0(BUS14460[2]),
        .I1(\COUNT_reg[0]_0 ),
        .I2(BUS14460[1]),
        .I3(\COUNT_reg[3]_0 ),
        .O(\COUNT_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg2[4]_i_1__0 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14460[1]),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg2[5]_i_1__0 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14460[1]),
        .I2(\COUNT_reg[0]_0 ),
        .I3(BUS14460[2]),
        .O(\COUNT_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hE9E1)) 
    \seg2[6]_i_1 
       (.I0(BUS14460[2]),
        .I1(BUS14460[1]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT_reg[2]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_2
   (CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    AR,
    D);
  input CLK;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input [0:0]AR;
  output [6:0]D;

  wire [0:0]AR;
  wire [3:0]BUS14424;
  wire CLK;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[2]_i_1__1_n_0 ;
  wire \COUNT[3]_i_2__1_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]D;

  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1 
       (.I0(BUS14424[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1 
       (.I0(BUS14424[3]),
        .I1(BUS14424[2]),
        .I2(BUS14424[1]),
        .I3(BUS14424[0]),
        .O(\COUNT[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hA9A8)) 
    \COUNT[2]_i_1__1 
       (.I0(BUS14424[2]),
        .I1(BUS14424[1]),
        .I2(BUS14424[0]),
        .I3(BUS14424[3]),
        .O(\COUNT[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT[2]_i_3__0 
       (.I0(BUS14424[0]),
        .I1(BUS14424[1]),
        .I2(BUS14424[2]),
        .I3(BUS14424[3]),
        .O(\COUNT_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2__1 
       (.I0(BUS14424[3]),
        .I1(BUS14424[2]),
        .I2(BUS14424[1]),
        .I3(BUS14424[0]),
        .O(\COUNT[3]_i_2__1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14424[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(BUS14424[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(AR),
        .D(\COUNT[2]_i_1__1_n_0 ),
        .Q(BUS14424[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .D(\COUNT[3]_i_2__1_n_0 ),
        .PRE(AR),
        .Q(BUS14424[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hE1E2)) 
    \seg0[0]_i_1__0 
       (.I0(BUS14424[2]),
        .I1(BUS14424[1]),
        .I2(BUS14424[3]),
        .I3(BUS14424[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg0[1]_i_1__0 
       (.I0(BUS14424[3]),
        .I1(BUS14424[0]),
        .I2(BUS14424[2]),
        .I3(BUS14424[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg0[2]_i_1__0 
       (.I0(BUS14424[0]),
        .I1(BUS14424[3]),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hEDC2)) 
    \seg0[3]_i_1__0 
       (.I0(BUS14424[0]),
        .I1(BUS14424[3]),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg0[4]_i_1 
       (.I0(BUS14424[0]),
        .I1(BUS14424[3]),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg0[5]_i_1 
       (.I0(BUS14424[3]),
        .I1(BUS14424[1]),
        .I2(BUS14424[0]),
        .I3(BUS14424[2]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hECC3)) 
    \seg0[6]_i_1__0 
       (.I0(BUS14424[0]),
        .I1(BUS14424[3]),
        .I2(BUS14424[1]),
        .I3(BUS14424[2]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_3
   (CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[3]_0 ,
    AR,
    BUS14398);
  input CLK;
  output \COUNT_reg[0]_0 ;
  output \COUNT_reg[1]_0 ;
  input \COUNT_reg[3]_0 ;
  input [0:0]AR;
  output [1:0]BUS14398;

  wire [0:0]AR;
  wire [1:0]BUS14398;
  wire CLK;
  wire \COUNT[0]_i_1__3_n_0 ;
  wire \COUNT[1]_i_1__3_n_0 ;
  wire \COUNT[2]_i_1__3_n_0 ;
  wire \COUNT[3]_i_2__3_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[1]_0 ;
  wire \COUNT_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__3 
       (.I0(\COUNT_reg[0]_0 ),
        .O(\COUNT[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h9998)) 
    \COUNT[1]_i_1__3 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS14398[1]),
        .I3(BUS14398[0]),
        .O(\COUNT[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \COUNT[2]_i_1__3 
       (.I0(BUS14398[0]),
        .I1(\COUNT_reg[1]_0 ),
        .I2(\COUNT_reg[0]_0 ),
        .O(\COUNT[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \COUNT[3]_i_2__3 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS14398[1]),
        .I3(BUS14398[0]),
        .O(\COUNT[3]_i_2__3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[0]_i_1__3_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1__3_n_0 ),
        .Q(\COUNT_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[2]_i_1__3_n_0 ),
        .PRE(AR),
        .Q(BUS14398[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .CLR(AR),
        .D(\COUNT[3]_i_2__3_n_0 ),
        .Q(BUS14398[1]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_4
   (CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[3]_1 ,
    AR,
    \COUNT_reg[2]_0 );
  input CLK;
  output \COUNT_reg[0]_0 ;
  output \COUNT_reg[1]_0 ;
  output \COUNT_reg[3]_0 ;
  input \COUNT_reg[3]_1 ;
  input [0:0]AR;
  output [6:0]\COUNT_reg[2]_0 ;

  wire [0:0]AR;
  wire [2:1]BUS14402;
  wire CLK;
  wire \COUNT[0]_i_1__0_n_0 ;
  wire \COUNT[1]_i_1__0_n_0 ;
  wire \COUNT[2]_i_1__2_n_0 ;
  wire \COUNT[3]_i_2__2_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[1]_0 ;
  wire [6:0]\COUNT_reg[2]_0 ;
  wire \COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]_1 ;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__0 
       (.I0(\COUNT_reg[0]_0 ),
        .O(\COUNT[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__0 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14402[2]),
        .I2(BUS14402[1]),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hCC98)) 
    \COUNT[2]_i_1__2 
       (.I0(BUS14402[1]),
        .I1(BUS14402[2]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF0E1)) 
    \COUNT[3]_i_2__2 
       (.I0(BUS14402[2]),
        .I1(BUS14402[1]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT[3]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT[3]_i_4__1 
       (.I0(BUS14402[1]),
        .I1(BUS14402[2]),
        .O(\COUNT_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .D(\COUNT[0]_i_1__0_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1__0_n_0 ),
        .Q(BUS14402[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .CLR(AR),
        .D(\COUNT[2]_i_1__2_n_0 ),
        .Q(BUS14402[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_1 ),
        .D(\COUNT[3]_i_2__2_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hCDC2)) 
    \seg2[0]_i_1__0 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14402[1]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg2[1]_i_1__0 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(\COUNT_reg[0]_0 ),
        .I2(BUS14402[2]),
        .I3(BUS14402[1]),
        .O(\COUNT_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg2[2]_i_1__0 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14402[1]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFA86)) 
    \seg2[3]_i_1__0 
       (.I0(BUS14402[2]),
        .I1(\COUNT_reg[0]_0 ),
        .I2(BUS14402[1]),
        .I3(\COUNT_reg[3]_0 ),
        .O(\COUNT_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg2[4]_i_1 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[3]_0 ),
        .I2(BUS14402[1]),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg2[5]_i_1 
       (.I0(\COUNT_reg[3]_0 ),
        .I1(BUS14402[1]),
        .I2(\COUNT_reg[0]_0 ),
        .I3(BUS14402[2]),
        .O(\COUNT_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hE9E1)) 
    \seg2[6]_i_1__0 
       (.I0(BUS14402[2]),
        .I1(BUS14402[1]),
        .I2(\COUNT_reg[3]_0 ),
        .I3(\COUNT_reg[0]_0 ),
        .O(\COUNT_reg[2]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_7
   (CE_IBUF,
    CLK,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[2]_0 ,
    \COUNT_reg[2]_1 ,
    COUNT_reg,
    ENABLE2,
    NET7792,
    NET7800,
    NET7808,
    r_D7_reg,
    r_D8_reg,
    AR,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[3]_0 );
  input CE_IBUF;
  input CLK;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[2]_0 ;
  input \COUNT_reg[2]_1 ;
  input [3:3]COUNT_reg;
  input ENABLE2;
  input NET7792;
  input NET7800;
  input NET7808;
  output r_D7_reg;
  output r_D8_reg;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0]_0 ;
  input [1:0]\COUNT_reg[3]_0 ;

  wire [0:0]AR;
  wire [2:0]BUS14440;
  wire CE_IBUF;
  wire CLK;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[1]_i_2__0_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire \COUNT[2]_i_2_n_0 ;
  wire \COUNT[3]_i_3__0_n_0 ;
  wire \COUNT[3]_i_3__1_n_0 ;
  wire [3:3]COUNT_reg;
  wire [6:0]\COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire \COUNT_reg[2]_0 ;
  wire \COUNT_reg[2]_1 ;
  wire [1:0]\COUNT_reg[3]_0 ;
  wire ENABLE2;
  wire NET7792;
  wire NET7800;
  wire NET7808;
  wire r_D7_reg;
  wire r_D8_reg;

  LUT6 #(
    .INIT(64'hF3F3F7FF0C0C0800)) 
    \COUNT[0]_i_1 
       (.I0(ENABLE2),
        .I1(CE_IBUF),
        .I2(\COUNT_reg[0]_1 ),
        .I3(\COUNT_reg[2]_0 ),
        .I4(NET7792),
        .I5(BUS14440[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABFFBBFFA8008800)) 
    \COUNT[1]_i_1 
       (.I0(\COUNT[1]_i_2__0_n_0 ),
        .I1(NET7792),
        .I2(\COUNT_reg[2]_0 ),
        .I3(\COUNT_reg[2]_1 ),
        .I4(ENABLE2),
        .I5(BUS14440[1]),
        .O(\COUNT[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC2)) 
    \COUNT[1]_i_2__0 
       (.I0(BUS14440[2]),
        .I1(BUS14440[1]),
        .I2(BUS14440[0]),
        .O(\COUNT[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFFBBFFA8008800)) 
    \COUNT[2]_i_1 
       (.I0(\COUNT[2]_i_2_n_0 ),
        .I1(NET7792),
        .I2(\COUNT_reg[2]_0 ),
        .I3(\COUNT_reg[2]_1 ),
        .I4(ENABLE2),
        .I5(BUS14440[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \COUNT[2]_i_2 
       (.I0(BUS14440[0]),
        .I1(BUS14440[1]),
        .I2(BUS14440[2]),
        .O(\COUNT[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3020202020202020)) 
    \COUNT[3]_i_1__2 
       (.I0(NET7808),
        .I1(\COUNT_reg[0]_1 ),
        .I2(CE_IBUF),
        .I3(ENABLE2),
        .I4(\COUNT[3]_i_3__0_n_0 ),
        .I5(\COUNT_reg[2]_0 ),
        .O(r_D8_reg));
  LUT6 #(
    .INIT(64'h888888C888888888)) 
    \COUNT[3]_i_1__3 
       (.I0(NET7800),
        .I1(\COUNT_reg[2]_1 ),
        .I2(ENABLE2),
        .I3(\COUNT[3]_i_3__1_n_0 ),
        .I4(BUS14440[0]),
        .I5(\COUNT_reg[2]_0 ),
        .O(r_D7_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \COUNT[3]_i_3__0 
       (.I0(BUS14440[1]),
        .I1(BUS14440[2]),
        .I2(COUNT_reg),
        .I3(BUS14440[0]),
        .I4(\COUNT_reg[3]_0 [0]),
        .I5(\COUNT_reg[3]_0 [1]),
        .O(\COUNT[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT[3]_i_3__1 
       (.I0(BUS14440[1]),
        .I1(BUS14440[2]),
        .O(\COUNT[3]_i_3__1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14440[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(BUS14440[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\COUNT[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(BUS14440[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \seg1[0]_i_1 
       (.I0(BUS14440[1]),
        .I1(BUS14440[0]),
        .I2(BUS14440[2]),
        .O(\COUNT_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \seg1[1]_i_1__0 
       (.I0(BUS14440[0]),
        .I1(BUS14440[2]),
        .I2(BUS14440[1]),
        .O(\COUNT_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg1[2]_i_1__0 
       (.I0(BUS14440[2]),
        .I1(BUS14440[1]),
        .I2(BUS14440[0]),
        .O(\COUNT_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \seg1[3]_i_1 
       (.I0(BUS14440[2]),
        .I1(BUS14440[0]),
        .I2(BUS14440[1]),
        .O(\COUNT_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \seg1[4]_i_1__0 
       (.I0(BUS14440[0]),
        .I1(BUS14440[1]),
        .I2(BUS14440[2]),
        .O(\COUNT_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \seg1[5]_i_1__0 
       (.I0(BUS14440[1]),
        .I1(BUS14440[0]),
        .I2(BUS14440[2]),
        .O(\COUNT_reg[0]_0 [5]));
  LUT3 #(
    .INIT(8'h83)) 
    \seg1[6]_i_1 
       (.I0(BUS14440[0]),
        .I1(BUS14440[2]),
        .I2(BUS14440[1]),
        .O(\COUNT_reg[0]_0 [6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_8
   (CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    AR,
    D);
  input CLK;
  output \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input [0:0]AR;
  output [6:0]D;

  wire [0:0]AR;
  wire [3:0]BUS14448;
  wire CLK;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]D;
  wire [3:0]p_2_in;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__1 
       (.I0(BUS14448[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \COUNT[1]_i_1__1 
       (.I0(BUS14448[3]),
        .I1(BUS14448[2]),
        .I2(BUS14448[1]),
        .I3(BUS14448[0]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hA9A8)) 
    \COUNT[2]_i_1 
       (.I0(BUS14448[2]),
        .I1(BUS14448[1]),
        .I2(BUS14448[0]),
        .I3(BUS14448[3]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT[2]_i_3 
       (.I0(BUS14448[0]),
        .I1(BUS14448[1]),
        .I2(BUS14448[2]),
        .I3(BUS14448[3]),
        .O(\COUNT_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \COUNT[3]_i_2 
       (.I0(BUS14448[3]),
        .I1(BUS14448[2]),
        .I2(BUS14448[1]),
        .I3(BUS14448[0]),
        .O(p_2_in[3]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .D(p_2_in[0]),
        .PRE(AR),
        .Q(BUS14448[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(AR),
        .D(p_2_in[1]),
        .Q(BUS14448[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .CLR(AR),
        .D(p_2_in[2]),
        .Q(BUS14448[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[3] 
       (.C(CLK),
        .CE(\COUNT_reg[0]_1 ),
        .D(p_2_in[3]),
        .PRE(AR),
        .Q(BUS14448[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hE1E2)) 
    \seg0[0]_i_1 
       (.I0(BUS14448[2]),
        .I1(BUS14448[1]),
        .I2(BUS14448[3]),
        .I3(BUS14448[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBAE0)) 
    \seg0[1]_i_1 
       (.I0(BUS14448[3]),
        .I1(BUS14448[0]),
        .I2(BUS14448[2]),
        .I3(BUS14448[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg0[2]_i_1 
       (.I0(BUS14448[0]),
        .I1(BUS14448[3]),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEDC2)) 
    \seg0[3]_i_1 
       (.I0(BUS14448[0]),
        .I1(BUS14448[3]),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \seg0[4]_i_1__0 
       (.I0(BUS14448[0]),
        .I1(BUS14448[3]),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \seg0[5]_i_1__0 
       (.I0(BUS14448[3]),
        .I1(BUS14448[1]),
        .I2(BUS14448[0]),
        .I3(BUS14448[2]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hECC3)) 
    \seg0[6]_i_1 
       (.I0(BUS14448[0]),
        .I1(BUS14448[3]),
        .I2(BUS14448[1]),
        .I3(BUS14448[2]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_9
   (CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[3]_0 ,
    AR,
    BUS14456);
  input CLK;
  output \COUNT_reg[0]_0 ;
  output \COUNT_reg[1]_0 ;
  input \COUNT_reg[3]_0 ;
  input [0:0]AR;
  output [1:0]BUS14456;

  wire [0:0]AR;
  wire [1:0]BUS14456;
  wire CLK;
  wire \COUNT[0]_i_1__4_n_0 ;
  wire \COUNT[1]_i_1__4_n_0 ;
  wire \COUNT[2]_i_1__4_n_0 ;
  wire \COUNT[3]_i_2__4_n_0 ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[1]_0 ;
  wire \COUNT_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_1__4 
       (.I0(\COUNT_reg[0]_0 ),
        .O(\COUNT[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h9998)) 
    \COUNT[1]_i_1__4 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS14456[1]),
        .I3(BUS14456[0]),
        .O(\COUNT[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \COUNT[2]_i_1__4 
       (.I0(BUS14456[0]),
        .I1(\COUNT_reg[1]_0 ),
        .I2(\COUNT_reg[0]_0 ),
        .O(\COUNT[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \COUNT[3]_i_2__4 
       (.I0(\COUNT_reg[0]_0 ),
        .I1(\COUNT_reg[1]_0 ),
        .I2(BUS14456[1]),
        .I3(BUS14456[0]),
        .O(\COUNT[3]_i_2__4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[0] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[0]_i_1__4_n_0 ),
        .PRE(AR),
        .Q(\COUNT_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .CLR(AR),
        .D(\COUNT[1]_i_1__4_n_0 ),
        .Q(\COUNT_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_reg[2] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .D(\COUNT[2]_i_1__4_n_0 ),
        .PRE(AR),
        .Q(BUS14456[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(CLK),
        .CE(\COUNT_reg[3]_0 ),
        .CLR(AR),
        .D(\COUNT[3]_i_2__4_n_0 ),
        .Q(BUS14456[1]));
endmodule

module Decoder
   (CE_IBUF,
    CLK,
    \seg3_reg[0]_0 ,
    \seg3_reg[1]_0 ,
    \seg3_reg[2]_0 ,
    \seg3_reg[3]_0 ,
    \seg3_reg[4]_0 ,
    \seg3_reg[5]_0 ,
    \seg3_reg[6]_0 ,
    AR,
    BUS14398,
    D,
    counter2,
    \seg1_reg[6]_0 ,
    \seg2_reg[6]_0 );
  input CE_IBUF;
  input CLK;
  output \seg3_reg[0]_0 ;
  output \seg3_reg[1]_0 ;
  output \seg3_reg[2]_0 ;
  output \seg3_reg[3]_0 ;
  output \seg3_reg[4]_0 ;
  output \seg3_reg[5]_0 ;
  output \seg3_reg[6]_0 ;
  input [0:0]AR;
  input [3:0]BUS14398;
  input [6:0]D;
  input [1:0]counter2;
  input [6:0]\seg1_reg[6]_0 ;
  input [6:0]\seg2_reg[6]_0 ;

  wire [0:0]AR;
  wire [3:0]BUS14398;
  wire CE_IBUF;
  wire CLK;
  wire [6:0]D;
  wire [1:0]counter2;
  wire [6:0]seg0;
  wire [6:0]seg1;
  wire [6:0]\seg1_reg[6]_0 ;
  wire [6:0]seg2;
  wire [6:0]\seg2_reg[6]_0 ;
  wire [6:0]seg3;
  wire \seg3[0]_i_1_n_0 ;
  wire \seg3[1]_i_1_n_0 ;
  wire \seg3[2]_i_1_n_0 ;
  wire \seg3[3]_i_1_n_0 ;
  wire \seg3[4]_i_1_n_0 ;
  wire \seg3[5]_i_1_n_0 ;
  wire \seg3[6]_i_1_n_0 ;
  wire \seg3_reg[0]_0 ;
  wire \seg3_reg[1]_0 ;
  wire \seg3_reg[2]_0 ;
  wire \seg3_reg[3]_0 ;
  wire \seg3_reg[4]_0 ;
  wire \seg3_reg[5]_0 ;
  wire \seg3_reg[6]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[0]),
        .Q(seg0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[1]),
        .Q(seg0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[2]),
        .Q(seg0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[3]),
        .Q(seg0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[4]),
        .Q(seg0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[5]),
        .Q(seg0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[6]),
        .Q(seg0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [0]),
        .Q(seg1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [1]),
        .Q(seg1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [2]),
        .Q(seg1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [3]),
        .Q(seg1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [4]),
        .Q(seg1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [5]),
        .Q(seg1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [6]),
        .Q(seg1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [0]),
        .Q(seg2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [1]),
        .Q(seg2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [2]),
        .Q(seg2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [3]),
        .Q(seg2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [4]),
        .Q(seg2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [5]),
        .Q(seg2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [6]),
        .Q(seg2[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFC12)) 
    \seg3[0]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[1]),
        .I2(BUS14398[2]),
        .I3(BUS14398[3]),
        .O(\seg3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFA28)) 
    \seg3[1]_i_1 
       (.I0(BUS14398[2]),
        .I1(BUS14398[0]),
        .I2(BUS14398[1]),
        .I3(BUS14398[3]),
        .O(\seg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFC04)) 
    \seg3[2]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[1]),
        .I2(BUS14398[2]),
        .I3(BUS14398[3]),
        .O(\seg3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFC92)) 
    \seg3[3]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[1]),
        .I2(BUS14398[2]),
        .I3(BUS14398[3]),
        .O(\seg3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \seg3[4]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[2]),
        .I2(BUS14398[1]),
        .I3(BUS14398[3]),
        .O(\seg3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFC8E)) 
    \seg3[5]_i_1 
       (.I0(BUS14398[0]),
        .I1(BUS14398[1]),
        .I2(BUS14398[2]),
        .I3(BUS14398[3]),
        .O(\seg3[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEE91)) 
    \seg3[6]_i_1 
       (.I0(BUS14398[1]),
        .I1(BUS14398[2]),
        .I2(BUS14398[0]),
        .I3(BUS14398[3]),
        .O(\seg3[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[0]_i_1_n_0 ),
        .Q(seg3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[1]_i_1_n_0 ),
        .Q(seg3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[2]_i_1_n_0 ),
        .Q(seg3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[3]_i_1_n_0 ),
        .Q(seg3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[4]_i_1_n_0 ),
        .Q(seg3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[5]_i_1_n_0 ),
        .Q(seg3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[6]_i_1_n_0 ),
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
    CLK,
    \seg3_reg[0]_0 ,
    \seg3_reg[1]_0 ,
    \seg3_reg[2]_0 ,
    \seg3_reg[3]_0 ,
    \seg3_reg[4]_0 ,
    \seg3_reg[5]_0 ,
    \seg3_reg[6]_0 ,
    AR,
    BUS14456,
    D,
    counter2,
    \seg1_reg[6]_0 ,
    \seg2_reg[6]_0 );
  input CE_IBUF;
  input CLK;
  output \seg3_reg[0]_0 ;
  output \seg3_reg[1]_0 ;
  output \seg3_reg[2]_0 ;
  output \seg3_reg[3]_0 ;
  output \seg3_reg[4]_0 ;
  output \seg3_reg[5]_0 ;
  output \seg3_reg[6]_0 ;
  input [0:0]AR;
  input [3:0]BUS14456;
  input [6:0]D;
  input [1:0]counter2;
  input [6:0]\seg1_reg[6]_0 ;
  input [6:0]\seg2_reg[6]_0 ;

  wire [0:0]AR;
  wire [3:0]BUS14456;
  wire CE_IBUF;
  wire CLK;
  wire [6:0]D;
  wire [1:0]counter2;
  wire [6:0]seg0_reg_n_0_;
  wire [6:0]\seg1_reg[6]_0 ;
  wire [6:0]seg1_reg_n_0_;
  wire [6:0]\seg2_reg[6]_0 ;
  wire [6:0]seg2_reg_n_0_;
  wire \seg3[0]_i_1_n_0 ;
  wire \seg3[1]_i_1_n_0 ;
  wire \seg3[2]_i_1_n_0 ;
  wire \seg3[3]_i_1_n_0 ;
  wire \seg3[4]_i_1_n_0 ;
  wire \seg3[5]_i_1_n_0 ;
  wire \seg3[6]_i_1_n_0 ;
  wire \seg3_reg[0]_0 ;
  wire \seg3_reg[1]_0 ;
  wire \seg3_reg[2]_0 ;
  wire \seg3_reg[3]_0 ;
  wire \seg3_reg[4]_0 ;
  wire \seg3_reg[5]_0 ;
  wire \seg3_reg[6]_0 ;
  wire [6:0]seg3_reg_n_0_;

  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[0]),
        .Q(seg0_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[1]),
        .Q(seg0_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[2]),
        .Q(seg0_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[3]),
        .Q(seg0_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[4]),
        .Q(seg0_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[5]),
        .Q(seg0_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg0_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(D[6]),
        .Q(seg0_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [0]),
        .Q(seg1_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [1]),
        .Q(seg1_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [2]),
        .Q(seg1_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [3]),
        .Q(seg1_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [4]),
        .Q(seg1_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [5]),
        .Q(seg1_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg1_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg1_reg[6]_0 [6]),
        .Q(seg1_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [0]),
        .Q(seg2_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [1]),
        .Q(seg2_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [2]),
        .Q(seg2_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [3]),
        .Q(seg2_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [4]),
        .Q(seg2_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [5]),
        .Q(seg2_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg2_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg2_reg[6]_0 [6]),
        .Q(seg2_reg_n_0_[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFC12)) 
    \seg3[0]_i_1 
       (.I0(BUS14456[0]),
        .I1(BUS14456[1]),
        .I2(BUS14456[2]),
        .I3(BUS14456[3]),
        .O(\seg3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFA28)) 
    \seg3[1]_i_1 
       (.I0(BUS14456[2]),
        .I1(BUS14456[0]),
        .I2(BUS14456[1]),
        .I3(BUS14456[3]),
        .O(\seg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFC04)) 
    \seg3[2]_i_1 
       (.I0(BUS14456[0]),
        .I1(BUS14456[1]),
        .I2(BUS14456[2]),
        .I3(BUS14456[3]),
        .O(\seg3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFC92)) 
    \seg3[3]_i_1 
       (.I0(BUS14456[0]),
        .I1(BUS14456[1]),
        .I2(BUS14456[2]),
        .I3(BUS14456[3]),
        .O(\seg3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \seg3[4]_i_1 
       (.I0(BUS14456[0]),
        .I1(BUS14456[2]),
        .I2(BUS14456[1]),
        .I3(BUS14456[3]),
        .O(\seg3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFC8E)) 
    \seg3[5]_i_1 
       (.I0(BUS14456[0]),
        .I1(BUS14456[1]),
        .I2(BUS14456[2]),
        .I3(BUS14456[3]),
        .O(\seg3[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEE91)) 
    \seg3[6]_i_1 
       (.I0(BUS14456[1]),
        .I1(BUS14456[2]),
        .I2(BUS14456[0]),
        .I3(BUS14456[3]),
        .O(\seg3[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[0]_i_1_n_0 ),
        .Q(seg3_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[1]_i_1_n_0 ),
        .Q(seg3_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[2]_i_1_n_0 ),
        .Q(seg3_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[3]_i_1_n_0 ),
        .Q(seg3_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[4]_i_1_n_0 ),
        .Q(seg3_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[5]_i_1_n_0 ),
        .Q(seg3_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg3_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\seg3[6]_i_1_n_0 ),
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
   (CLK,
    COUNT_reg,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[3]_1 ,
    AR,
    BUS14398,
    \COUNT_reg[2] ,
    \COUNT_reg[3] );
  input CLK;
  output [1:0]COUNT_reg;
  output \COUNT_reg[1]_0 ;
  input \COUNT_reg[3]_0 ;
  input \COUNT_reg[3]_1 ;
  input [0:0]AR;
  output [1:0]BUS14398;
  output [6:0]\COUNT_reg[2] ;
  output [1:0]\COUNT_reg[3] ;

  wire [0:0]AR;
  wire [1:0]BUS14398;
  wire CLK;
  wire [1:0]COUNT_reg;
  wire \COUNT_reg[1]_0 ;
  wire [6:0]\COUNT_reg[2] ;
  wire [1:0]\COUNT_reg[3] ;
  wire \COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]_1 ;

  Counter_3 tens_min
       (.AR(AR),
        .BUS14398(BUS14398),
        .CLK(CLK),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[1]_0 (\COUNT_reg[1]_0 ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_1 ));
  Counter_4 unit_min
       (.AR(AR),
        .CLK(CLK),
        .\COUNT_reg[0]_0 (\COUNT_reg[3] [0]),
        .\COUNT_reg[1]_0 (COUNT_reg[1]),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3] [1]),
        .\COUNT_reg[3]_1 (\COUNT_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "Minute_counter" *) 
module Minute_counter_5
   (CLK,
    COUNT_reg,
    \COUNT_reg[1]_0 ,
    \COUNT_reg[3]_0 ,
    \COUNT_reg[3]_1 ,
    AR,
    BUS14456,
    \COUNT_reg[2] ,
    \COUNT_reg[3] );
  input CLK;
  output [1:0]COUNT_reg;
  output \COUNT_reg[1]_0 ;
  input \COUNT_reg[3]_0 ;
  input \COUNT_reg[3]_1 ;
  input [0:0]AR;
  output [1:0]BUS14456;
  output [6:0]\COUNT_reg[2] ;
  output [1:0]\COUNT_reg[3] ;

  wire [0:0]AR;
  wire [1:0]BUS14456;
  wire CLK;
  wire [1:0]COUNT_reg;
  wire \COUNT_reg[1]_0 ;
  wire [6:0]\COUNT_reg[2] ;
  wire [1:0]\COUNT_reg[3] ;
  wire \COUNT_reg[3]_0 ;
  wire \COUNT_reg[3]_1 ;

  Counter_9 tens_min
       (.AR(AR),
        .BUS14456(BUS14456),
        .CLK(CLK),
        .\COUNT_reg[0]_0 (COUNT_reg[0]),
        .\COUNT_reg[1]_0 (\COUNT_reg[1]_0 ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_1 ));
  Counter_10 unit_min
       (.AR(AR),
        .CLK(CLK),
        .\COUNT_reg[0]_0 (\COUNT_reg[3] [0]),
        .\COUNT_reg[1]_0 (COUNT_reg[1]),
        .\COUNT_reg[2]_0 (\COUNT_reg[2] ),
        .\COUNT_reg[3]_0 (\COUNT_reg[3] [1]),
        .\COUNT_reg[3]_1 (\COUNT_reg[3]_0 ));
endmodule

module Prescaler
   (CE,
    CE_IBUF,
    CLK,
    \Divider_reg[15]_0 ,
    AR);
  output CE;
  input CE_IBUF;
  input CLK;
  output \Divider_reg[15]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CE;
  wire CE_IBUF;
  wire CLK;
  wire \COUNT[3]_i_10_n_0 ;
  wire \COUNT[3]_i_4_n_0 ;
  wire \COUNT[3]_i_5_n_0 ;
  wire \COUNT[3]_i_6_n_0 ;
  wire \COUNT[3]_i_7_n_0 ;
  wire \COUNT[3]_i_8_n_0 ;
  wire \COUNT[3]_i_9_n_0 ;
  wire [26:0]Divider;
  wire Divider0_carry__0_n_0;
  wire Divider0_carry__1_n_0;
  wire Divider0_carry__2_n_0;
  wire Divider0_carry__3_n_0;
  wire Divider0_carry__4_n_0;
  wire Divider0_carry_n_0;
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
    \COUNT[2]_i_4 
       (.I0(CE_IBUF),
        .I1(\COUNT[3]_i_6_n_0 ),
        .I2(\COUNT[3]_i_5_n_0 ),
        .I3(\COUNT[3]_i_4_n_0 ),
        .O(CE));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[3]_i_10 
       (.I0(Divider_reg_n_0_[2]),
        .I1(Divider_reg_n_0_[1]),
        .I2(Divider_reg_n_0_[4]),
        .I3(Divider_reg_n_0_[3]),
        .O(\COUNT[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \COUNT[3]_i_3 
       (.I0(\COUNT[3]_i_4_n_0 ),
        .I1(\COUNT[3]_i_5_n_0 ),
        .I2(\COUNT[3]_i_6_n_0 ),
        .O(\Divider_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \COUNT[3]_i_4 
       (.I0(Divider_reg_n_0_[15]),
        .I1(Divider_reg_n_0_[16]),
        .I2(Divider_reg_n_0_[13]),
        .I3(Divider_reg_n_0_[14]),
        .I4(\COUNT[3]_i_7_n_0 ),
        .O(\COUNT[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \COUNT[3]_i_5 
       (.I0(Divider_reg_n_0_[8]),
        .I1(Divider_reg_n_0_[7]),
        .I2(Divider_reg_n_0_[5]),
        .I3(Divider_reg_n_0_[6]),
        .I4(\COUNT[3]_i_8_n_0 ),
        .O(\COUNT[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \COUNT[3]_i_6 
       (.I0(Divider_reg_n_0_[26]),
        .I1(Divider_reg_n_0_[25]),
        .I2(Divider_reg_n_0_[0]),
        .I3(\COUNT[3]_i_9_n_0 ),
        .I4(\COUNT[3]_i_10_n_0 ),
        .O(\COUNT[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \COUNT[3]_i_7 
       (.I0(Divider_reg_n_0_[18]),
        .I1(Divider_reg_n_0_[17]),
        .I2(Divider_reg_n_0_[20]),
        .I3(Divider_reg_n_0_[19]),
        .O(\COUNT[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT[3]_i_8 
       (.I0(Divider_reg_n_0_[10]),
        .I1(Divider_reg_n_0_[9]),
        .I2(Divider_reg_n_0_[12]),
        .I3(Divider_reg_n_0_[11]),
        .O(\COUNT[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[3]_i_9 
       (.I0(Divider_reg_n_0_[22]),
        .I1(Divider_reg_n_0_[21]),
        .I2(Divider_reg_n_0_[24]),
        .I3(Divider_reg_n_0_[23]),
        .O(\COUNT[3]_i_9_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[10]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[10]),
        .O(Divider[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[11]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[11]),
        .O(Divider[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[12]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[12]),
        .O(Divider[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[13]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[13]),
        .O(Divider[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[14]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[14]),
        .O(Divider[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[15]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[15]),
        .O(Divider[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[16]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[16]),
        .O(Divider[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[17]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[17]),
        .O(Divider[17]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[18]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[18]),
        .O(Divider[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[19]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[19]),
        .O(Divider[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[1]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[1]),
        .O(Divider[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[20]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[20]),
        .O(Divider[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[21]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[21]),
        .O(Divider[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[22]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[22]),
        .O(Divider[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[23]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[23]),
        .O(Divider[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[24]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[24]),
        .O(Divider[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[25]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[25]),
        .O(Divider[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[26]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[26]),
        .O(Divider[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[2]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[2]),
        .O(Divider[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[3]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[3]),
        .O(Divider[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[4]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[4]),
        .O(Divider[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[5]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[5]),
        .O(Divider[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[6]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[6]),
        .O(Divider[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[7]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[7]),
        .O(Divider[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[8]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[8]),
        .O(Divider[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Divider[9]_i_1 
       (.I0(\Divider_reg[15]_0 ),
        .I1(data0[9]),
        .O(Divider[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[0]),
        .Q(Divider_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[10] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[10]),
        .Q(Divider_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[11] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[11]),
        .Q(Divider_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[12] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[12]),
        .Q(Divider_reg_n_0_[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[13] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[13]),
        .Q(Divider_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[14] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[14]),
        .Q(Divider_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[15] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[15]),
        .Q(Divider_reg_n_0_[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[16] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[16]),
        .Q(Divider_reg_n_0_[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[17] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[17]),
        .Q(Divider_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[18] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[18]),
        .Q(Divider_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[19] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[19]),
        .Q(Divider_reg_n_0_[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[1]),
        .Q(Divider_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[20] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[20]),
        .Q(Divider_reg_n_0_[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[21] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[21]),
        .Q(Divider_reg_n_0_[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[22] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[22]),
        .Q(Divider_reg_n_0_[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[23] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[23]),
        .Q(Divider_reg_n_0_[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[24] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[24]),
        .Q(Divider_reg_n_0_[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[25] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[25]),
        .Q(Divider_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[26] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[26]),
        .Q(Divider_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[2]),
        .Q(Divider_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[3]),
        .Q(Divider_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[4]),
        .Q(Divider_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[5]),
        .Q(Divider_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[6]),
        .Q(Divider_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[7] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[7]),
        .Q(Divider_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[8] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[8]),
        .Q(Divider_reg_n_0_[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Divider_reg[9] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(Divider[9]),
        .Q(Divider_reg_n_0_[9]));
endmodule

module Second_counter
   (CE_IBUF,
    CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    COUNT_reg,
    ENABLE1,
    NET7772,
    NET7776,
    NET7780,
    r_D3_reg,
    r_D4_reg,
    AR,
    \COUNT_reg[0] ,
    \COUNT_reg[3]_0 ,
    D);
  input CE_IBUF;
  input CLK;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input [3:2]COUNT_reg;
  input ENABLE1;
  input NET7772;
  input NET7776;
  input NET7780;
  output r_D3_reg;
  output r_D4_reg;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0] ;
  input [1:0]\COUNT_reg[3]_0 ;
  output [6:0]D;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire [3:2]COUNT_reg;
  wire [6:0]\COUNT_reg[0] ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [1:0]\COUNT_reg[3]_0 ;
  wire [6:0]D;
  wire ENABLE1;
  wire NET7772;
  wire NET7776;
  wire NET7780;
  wire r_D3_reg;
  wire r_D4_reg;
  wire unit_sec_n_7;

  Counter tens_sec
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK),
        .COUNT_reg(COUNT_reg[3]),
        .\COUNT_reg[0]_0 (\COUNT_reg[0] ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[2]_0 (unit_sec_n_7),
        .\COUNT_reg[2]_1 (COUNT_reg[2]),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_0 ),
        .ENABLE1(ENABLE1),
        .NET7772(NET7772),
        .NET7776(NET7776),
        .NET7780(NET7780),
        .r_D3_reg(r_D3_reg),
        .r_D4_reg(r_D4_reg));
  Counter_2 unit_sec
       (.AR(AR),
        .CLK(CLK),
        .\COUNT_reg[0]_0 (unit_sec_n_7),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .D(D));
endmodule

(* ORIG_REF_NAME = "Second_counter" *) 
module Second_counter_6
   (CE_IBUF,
    CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    COUNT_reg,
    ENABLE2,
    NET7792,
    NET7800,
    NET7808,
    r_D7_reg,
    r_D8_reg,
    AR,
    \COUNT_reg[0] ,
    \COUNT_reg[3]_0 ,
    D);
  input CE_IBUF;
  input CLK;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input [3:2]COUNT_reg;
  input ENABLE2;
  input NET7792;
  input NET7800;
  input NET7808;
  output r_D7_reg;
  output r_D8_reg;
  input [0:0]AR;
  output [6:0]\COUNT_reg[0] ;
  input [1:0]\COUNT_reg[3]_0 ;
  output [6:0]D;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire [3:2]COUNT_reg;
  wire [6:0]\COUNT_reg[0] ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [1:0]\COUNT_reg[3]_0 ;
  wire [6:0]D;
  wire ENABLE2;
  wire NET7792;
  wire NET7800;
  wire NET7808;
  wire r_D7_reg;
  wire r_D8_reg;
  wire unit_sec_n_7;

  Counter_7 tens_sec
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK),
        .COUNT_reg(COUNT_reg[3]),
        .\COUNT_reg[0]_0 (\COUNT_reg[0] ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[2]_0 (unit_sec_n_7),
        .\COUNT_reg[2]_1 (COUNT_reg[2]),
        .\COUNT_reg[3]_0 (\COUNT_reg[3]_0 ),
        .ENABLE2(ENABLE2),
        .NET7792(NET7792),
        .NET7800(NET7800),
        .NET7808(NET7808),
        .r_D7_reg(r_D7_reg),
        .r_D8_reg(r_D8_reg));
  Counter_8 unit_sec
       (.AR(AR),
        .CLK(CLK),
        .\COUNT_reg[0]_0 (unit_sec_n_7),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .D(D));
endmodule

module Seven_seg_driver
   (CE_IBUF,
    CLK,
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
    Q,
    \counter2_reg[1]_0 ,
    \seg_select_reg[7]_0 );
  input CE_IBUF;
  input CLK;
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
  output [6:0]Q;
  output [1:0]\counter2_reg[1]_0 ;
  output [7:0]\seg_select_reg[7]_0 ;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
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

  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[0]_i_1 
       (.I0(counter1_reg[0]),
        .O(p_0_in[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter1[1]_i_1 
       (.I0(counter1_reg[0]),
        .I1(counter1_reg[1]),
        .O(p_0_in[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1[2]_i_1 
       (.I0(counter1_reg[1]),
        .I1(counter1_reg[0]),
        .I2(counter1_reg[2]),
        .O(p_0_in[2]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1[3]_i_1 
       (.I0(counter1_reg[2]),
        .I1(counter1_reg[0]),
        .I2(counter1_reg[1]),
        .I3(counter1_reg[3]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(counter1_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(counter1_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(counter1_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(counter1_reg[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter2[0]_i_1 
       (.I0(counter1_reg[1]),
        .I1(counter1_reg[0]),
        .I2(counter1_reg[2]),
        .I3(counter1_reg[3]),
        .I4(CE_IBUF),
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter2[0]_i_1_n_0 ),
        .Q(\counter2_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter2[1]_i_1_n_0 ),
        .Q(\counter2_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter2[2]_i_1_n_0 ),
        .Q(counter2));
  LUT5 #(
    .INIT(32'h80000000)) 
    \seg_out[6]_i_1 
       (.I0(CE_IBUF),
        .I1(counter1_reg[3]),
        .I2(counter1_reg[2]),
        .I3(counter1_reg[0]),
        .I4(counter1_reg[1]),
        .O(\seg_out[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg_out_reg[0] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
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
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
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
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
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
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
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
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
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
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
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
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
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
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[0]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[1] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[1]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[2] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[2]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[3] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[3]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[4] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[4]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[5] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[5]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[6] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[6]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \seg_select_reg[7] 
       (.C(CLK),
        .CE(\seg_out[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\seg_select[7]_i_1_n_0 ),
        .Q(\seg_select_reg[7]_0 [7]));
endmodule

module Switch
   (CE_IBUF,
    CLK,
    ENABLE1,
    ENABLE2,
    SELECT_IBUF,
    STOP_IBUF,
    AR);
  input CE_IBUF;
  input CLK;
  output ENABLE1;
  output ENABLE2;
  input SELECT_IBUF;
  input STOP_IBUF;
  input [0:0]AR;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire ENABLE1;
  wire ENABLE2;
  wire En1;
  wire En2;
  wire SELECT_IBUF;
  wire STOP_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(En1),
        .Q(ENABLE1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    En2_i_1
       (.I0(STOP_IBUF),
        .I1(CE_IBUF),
        .I2(SELECT_IBUF),
        .O(En2));
  FDCE #(
    .INIT(1'b0)) 
    En2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(En2),
        .Q(ENABLE2));
endmodule

module Timer_Clock
   (CE_IBUF,
    CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[2]_0 ,
    ENABLE2,
    NET7792,
    NET7800,
    NET7808,
    AR,
    BUS14456,
    \COUNT_reg[0] ,
    \COUNT_reg[2] ,
    D);
  input CE_IBUF;
  input CLK;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[2]_0 ;
  input ENABLE2;
  input NET7792;
  input NET7800;
  input NET7808;
  input [0:0]AR;
  output [3:0]BUS14456;
  output [6:0]\COUNT_reg[0] ;
  output [6:0]\COUNT_reg[2] ;
  output [6:0]D;

  wire [0:0]AR;
  wire [3:0]BUS14456;
  wire [3:0]BUS14460;
  wire CE_IBUF;
  wire CLK;
  wire [6:0]\COUNT_reg[0] ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]\COUNT_reg[2] ;
  wire \COUNT_reg[2]_0 ;
  wire [6:0]D;
  wire ENABLE2;
  wire NET7792;
  wire NET7800;
  wire NET7808;
  wire min_n_9;
  wire sec_n_0;
  wire sec_n_1;

  Minute_counter_5 min
       (.AR(AR),
        .BUS14456(BUS14456[3:2]),
        .CLK(CLK),
        .COUNT_reg({min_n_9,BUS14456[0]}),
        .\COUNT_reg[1]_0 (BUS14456[1]),
        .\COUNT_reg[2] (\COUNT_reg[2] ),
        .\COUNT_reg[3] ({BUS14460[3],BUS14460[0]}),
        .\COUNT_reg[3]_0 (sec_n_1),
        .\COUNT_reg[3]_1 (sec_n_0));
  Second_counter_6 sec
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK),
        .COUNT_reg({min_n_9,\COUNT_reg[2]_0 }),
        .\COUNT_reg[0] (\COUNT_reg[0] ),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[3]_0 ({BUS14460[3],BUS14460[0]}),
        .D(D),
        .ENABLE2(ENABLE2),
        .NET7792(NET7792),
        .NET7800(NET7800),
        .NET7808(NET7808),
        .r_D7_reg(sec_n_1),
        .r_D8_reg(sec_n_0));
endmodule

(* ORIG_REF_NAME = "Timer_Clock" *) 
module Timer_Clock_1
   (CE_IBUF,
    CLK,
    \COUNT_reg[0]_0 ,
    \COUNT_reg[0]_1 ,
    \COUNT_reg[2]_0 ,
    ENABLE1,
    NET7772,
    NET7776,
    NET7780,
    AR,
    BUS14398,
    \COUNT_reg[0] ,
    \COUNT_reg[2] ,
    D);
  input CE_IBUF;
  input CLK;
  input \COUNT_reg[0]_0 ;
  input \COUNT_reg[0]_1 ;
  input \COUNT_reg[2]_0 ;
  input ENABLE1;
  input NET7772;
  input NET7776;
  input NET7780;
  input [0:0]AR;
  output [3:0]BUS14398;
  output [6:0]\COUNT_reg[0] ;
  output [6:0]\COUNT_reg[2] ;
  output [6:0]D;

  wire [0:0]AR;
  wire [3:0]BUS14398;
  wire [3:0]BUS14402;
  wire CE_IBUF;
  wire CLK;
  wire [6:0]\COUNT_reg[0] ;
  wire \COUNT_reg[0]_0 ;
  wire \COUNT_reg[0]_1 ;
  wire [6:0]\COUNT_reg[2] ;
  wire \COUNT_reg[2]_0 ;
  wire [6:0]D;
  wire ENABLE1;
  wire NET7772;
  wire NET7776;
  wire NET7780;
  wire min_n_9;
  wire sec_n_0;
  wire sec_n_1;

  Minute_counter min
       (.AR(AR),
        .BUS14398(BUS14398[3:2]),
        .CLK(CLK),
        .COUNT_reg({min_n_9,BUS14398[0]}),
        .\COUNT_reg[1]_0 (BUS14398[1]),
        .\COUNT_reg[2] (\COUNT_reg[2] ),
        .\COUNT_reg[3] ({BUS14402[3],BUS14402[0]}),
        .\COUNT_reg[3]_0 (sec_n_1),
        .\COUNT_reg[3]_1 (sec_n_0));
  Second_counter sec
       (.AR(AR),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK),
        .COUNT_reg({min_n_9,\COUNT_reg[2]_0 }),
        .\COUNT_reg[0] (\COUNT_reg[0] ),
        .\COUNT_reg[0]_0 (\COUNT_reg[0]_0 ),
        .\COUNT_reg[0]_1 (\COUNT_reg[0]_1 ),
        .\COUNT_reg[3]_0 ({BUS14402[3],BUS14402[0]}),
        .D(D),
        .ENABLE1(ENABLE1),
        .NET7772(NET7772),
        .NET7776(NET7776),
        .NET7780(NET7780),
        .r_D3_reg(sec_n_1),
        .r_D4_reg(sec_n_0));
endmodule

module Timer_Setter
   (CE_IBUF,
    CLK,
    COUNT_reg,
    D1_IBUF,
    D2_IBUF,
    D3_IBUF,
    D4_IBUF,
    D5_IBUF,
    D6_IBUF,
    D7_IBUF,
    D8_IBUF,
    ENABLE1,
    ENABLE2,
    NET7772,
    NET7776,
    NET7780,
    NET7792,
    NET7800,
    NET7808,
    STOP_IBUF,
    Set_Impulse_IBUF,
    r_D1_reg_0,
    r_D5_reg_0,
    AR);
  input CE_IBUF;
  input CLK;
  input [0:0]COUNT_reg;
  input D1_IBUF;
  input D2_IBUF;
  input D3_IBUF;
  input D4_IBUF;
  input D5_IBUF;
  input D6_IBUF;
  input D7_IBUF;
  input D8_IBUF;
  input ENABLE1;
  input ENABLE2;
  output NET7772;
  output NET7776;
  output NET7780;
  output NET7792;
  output NET7800;
  output NET7808;
  input STOP_IBUF;
  input Set_Impulse_IBUF;
  output r_D1_reg_0;
  output r_D5_reg_0;
  input [0:0]AR;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]COUNT_reg;
  wire D1_IBUF;
  wire D2_IBUF;
  wire D3_IBUF;
  wire D4_IBUF;
  wire D5_IBUF;
  wire D6_IBUF;
  wire D7_IBUF;
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
  wire STOP_IBUF;
  wire Set_Impulse_IBUF;
  wire r_D1;
  wire r_D1_reg_0;
  wire r_D2;
  wire r_D3;
  wire r_D4;
  wire r_D5;
  wire r_D5_reg_0;
  wire r_D6;
  wire r_D7;
  wire r_D8;

  LUT4 #(
    .INIT(16'h00E0)) 
    \COUNT[3]_i_1__1 
       (.I0(NET7768),
        .I1(ENABLE1),
        .I2(CE_IBUF),
        .I3(COUNT_reg),
        .O(r_D1_reg_0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \COUNT[3]_i_1__4 
       (.I0(NET7784),
        .I1(ENABLE2),
        .I2(CE_IBUF),
        .I3(COUNT_reg),
        .O(r_D5_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D1),
        .Q(NET7768));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D2),
        .Q(NET7772));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D3),
        .Q(NET7776));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D4),
        .Q(NET7780));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D5),
        .Q(NET7784));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D6),
        .Q(NET7792));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D7),
        .Q(NET7800));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(r_D8),
        .Q(NET7808));
endmodule

(* ECO_CHECKSUM = "2982f566" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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

  wire [3:0]BUS14398;
  wire [3:0]BUS14456;
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
  wire NET7772;
  wire NET7776;
  wire NET7780;
  wire NET7792;
  wire NET7800;
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
  wire U4_n_3;
  wire U4_n_4;
  wire U4_n_5;
  wire U4_n_6;
  wire U4_n_7;
  wire U4_n_8;
  wire U4_n_9;
  wire U9_n_10;
  wire U9_n_11;
  wire U9_n_12;
  wire U9_n_13;
  wire U9_n_14;
  wire U9_n_15;
  wire U9_n_16;
  wire U9_n_17;
  wire U9_n_18;
  wire U9_n_19;
  wire U9_n_20;
  wire U9_n_7;
  wire U9_n_8;
  wire U9_n_9;
  wire [1:0]counter2;
  wire [6:0]reverse_return;
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
  Decoder U10
       (.AR(CLR_IBUF),
        .BUS14398(BUS14398),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(reverse_return),
        .counter2(counter2),
        .\seg1_reg[6]_0 ({U9_n_7,U9_n_8,U9_n_9,U9_n_10,U9_n_11,U9_n_12,U9_n_13}),
        .\seg2_reg[6]_0 ({U9_n_14,U9_n_15,U9_n_16,U9_n_17,U9_n_18,U9_n_19,U9_n_20}),
        .\seg3_reg[0]_0 (U10_n_0),
        .\seg3_reg[1]_0 (U10_n_1),
        .\seg3_reg[2]_0 (U10_n_2),
        .\seg3_reg[3]_0 (U10_n_3),
        .\seg3_reg[4]_0 (U10_n_4),
        .\seg3_reg[5]_0 (U10_n_5),
        .\seg3_reg[6]_0 (U10_n_6));
  Decoder_0 U11
       (.AR(CLR_IBUF),
        .BUS14456(BUS14456),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D({U4_n_0,U4_n_1,U4_n_2,U4_n_3,U4_n_4,U4_n_5,U4_n_6}),
        .counter2(counter2),
        .\seg1_reg[6]_0 ({U4_n_7,U4_n_8,U4_n_9,U4_n_10,U4_n_11,U4_n_12,U4_n_13}),
        .\seg2_reg[6]_0 ({U4_n_14,U4_n_15,U4_n_16,U4_n_17,U4_n_18,U4_n_19,U4_n_20}),
        .\seg3_reg[0]_0 (U11_n_0),
        .\seg3_reg[1]_0 (U11_n_1),
        .\seg3_reg[2]_0 (U11_n_2),
        .\seg3_reg[3]_0 (U11_n_3),
        .\seg3_reg[4]_0 (U11_n_4),
        .\seg3_reg[5]_0 (U11_n_5),
        .\seg3_reg[6]_0 (U11_n_6));
  Seven_seg_driver U12
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .Q(seg_out_OBUF),
        .\counter2_reg[1]_0 (counter2),
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
        .\seg_select_reg[7]_0 (seg_select_OBUF));
  Timer_Setter U16
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .COUNT_reg(U18_n_0),
        .D1_IBUF(D1_IBUF),
        .D2_IBUF(D2_IBUF),
        .D3_IBUF(D3_IBUF),
        .D4_IBUF(D4_IBUF),
        .D5_IBUF(D5_IBUF),
        .D6_IBUF(D6_IBUF),
        .D7_IBUF(D7_IBUF),
        .D8_IBUF(D8_IBUF),
        .ENABLE1(ENABLE1),
        .ENABLE2(ENABLE2),
        .NET7772(NET7772),
        .NET7776(NET7776),
        .NET7780(NET7780),
        .NET7792(NET7792),
        .NET7800(NET7800),
        .NET7808(NET7808),
        .STOP_IBUF(STOP_IBUF),
        .Set_Impulse_IBUF(Set_Impulse_IBUF),
        .r_D1_reg_0(U16_n_6),
        .r_D5_reg_0(U16_n_7));
  Prescaler U18
       (.AR(CLR_IBUF),
        .CE(U18_n_1),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .\Divider_reg[15]_0 (U18_n_0));
  Switch U19
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .ENABLE1(ENABLE1),
        .ENABLE2(ENABLE2),
        .SELECT_IBUF(SELECT_IBUF),
        .STOP_IBUF(STOP_IBUF));
  Timer_Clock U4
       (.AR(CLR_IBUF),
        .BUS14456(BUS14456),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .\COUNT_reg[0] ({U4_n_7,U4_n_8,U4_n_9,U4_n_10,U4_n_11,U4_n_12,U4_n_13}),
        .\COUNT_reg[0]_0 (U18_n_0),
        .\COUNT_reg[0]_1 (U16_n_7),
        .\COUNT_reg[2] ({U4_n_14,U4_n_15,U4_n_16,U4_n_17,U4_n_18,U4_n_19,U4_n_20}),
        .\COUNT_reg[2]_0 (U18_n_1),
        .D({U4_n_0,U4_n_1,U4_n_2,U4_n_3,U4_n_4,U4_n_5,U4_n_6}),
        .ENABLE2(ENABLE2),
        .NET7792(NET7792),
        .NET7800(NET7800),
        .NET7808(NET7808));
  Timer_Clock_1 U9
       (.AR(CLR_IBUF),
        .BUS14398(BUS14398),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .\COUNT_reg[0] ({U9_n_7,U9_n_8,U9_n_9,U9_n_10,U9_n_11,U9_n_12,U9_n_13}),
        .\COUNT_reg[0]_0 (U18_n_0),
        .\COUNT_reg[0]_1 (U16_n_6),
        .\COUNT_reg[2] ({U9_n_14,U9_n_15,U9_n_16,U9_n_17,U9_n_18,U9_n_19,U9_n_20}),
        .\COUNT_reg[2]_0 (U18_n_1),
        .D(reverse_return),
        .ENABLE1(ENABLE1),
        .NET7772(NET7772),
        .NET7776(NET7776),
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
