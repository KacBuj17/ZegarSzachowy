`timescale 1ps / 1ps

// Testbench dla Switch
module Switch_TB();

    reg CLK;
    reg CLR;
    reg CE;
    reg SELECT;
    reg STOP;
    wire Enable_p1;
    wire Enable_p2;

    // Instancja testowanego modu³u
    Switch uut (
        .CLK(CLK),
        .CLR(CLR),
        .CE(CE),
        .SELECT(SELECT),
        .STOP(STOP),
        .Enable_p1(Enable_p1),
        .Enable_p2(Enable_p2)
    );

    // Generowanie zegara
    initial CLK = 0;
    always #5 CLK = ~CLK;

    initial begin
        // Inicjalizacja sygna³ów
        CLR = 1; CE = 0; SELECT = 0; STOP = 0;
        #10 CLR = 0;  // Zwolnienie resetu

        // Testowanie ró¿nych kombinacji
        #5 CE = 1; SELECT = 0; // Gracz 1 aktywny
        #10 SELECT = 1;        // Gracz 2 aktywny
        #10 STOP = 1;                     // Zatrzymanie obu graczy
        #10 STOP = 0; CE = 0;             // Dezaktywacja zegara

        #10 CLR = 1;                      // Reset
        #10 CLR = 0;                      // Zwolnienie resetu

        #10 $stop;                        // Zakoñczenie symulacji
    end
endmodule