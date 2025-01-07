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

    // Outputs
    wire [6:0] seg_out;
    wire [7:0] seg_select;

    // Instantiate the Unit Under Test (UUT)
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

    // Clock generation
    initial CLK = 0;
    always #5 CLK = ~CLK; // 10ns period (100MHz clock)

    // Testbench logic
    initial begin
        // Initialize Inputs
        CE = 0;
        CLR = 0;
        seg1 = 7'b1111001; // Display 1
        seg2 = 7'b0100100; // Display 2
        seg3 = 7'b0110000; // Display 3
        seg4 = 7'b0011001; // Display 4
        seg5 = 7'b0010010; // Display 5
        seg6 = 7'b0000010; // Display 6
        seg7 = 7'b1111000; // Display 7
        seg8 = 7'b0000000; // Display 8

        // Reset the system
        CLR = 1;
        #10;
        CLR = 0;

        // Enable the counter
        CE = 1;

        // Run simulation for 200 clock cycles
        #2000;

        // Disable the counter
        CE = 0;

        // Finish simulation
        #100;
        $stop;
    end

endmodule
