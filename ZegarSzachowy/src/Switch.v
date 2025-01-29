`timescale 1ns / 1ps

module Switch (
    input wire CLK,
    input wire CLR,
    input wire CE,
    input wire SELECT,
    input wire STOP,
    input wire END,
    output wire Enable_p1,
    output wire Enable_p2
);	  
    
    reg En1 = 1'b0;
    reg En2 = 1'b0;
    
    always @(posedge CLK or posedge CLR) begin 
        if (CLR) begin
            En1 <= 1'b0;
            En2 <= 1'b0;
        end 
		else if (CE) begin
            if (~STOP) begin
                if (~END) begin
                    En1 <= ~SELECT;
                    En2 <= SELECT;
                end
				else begin
	                En1 <= 1'b0;
	                En2 <= 1'b0;
            	end
            end 
			else begin
                En1 <= 1'b0;
                En2 <= 1'b0;
            end
        end 
		else begin
            En1 <= 1'b0;
            En2 <= 1'b0;
        end
    end
    
    assign Enable_p1 = En1;
    assign Enable_p2 = En2;
    
endmodule
