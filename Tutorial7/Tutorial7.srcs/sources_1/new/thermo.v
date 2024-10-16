`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2024 09:34:26
// Design Name: 
// Module Name: thermo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module thermo #(parameter SIZE=8)(
    input [SIZE-1:0] Tset,
    input [SIZE-1:0] Tact,
    output reg Hon,
    output reg Con
    );
    reg [SIZE-1:0] x;
    always @ *
    begin
        x = Tset - Tact;
        if (x < Tset)
            Hon = 1'b1;
        else if (x > Tset)
            Con = 1'b1;
        else
            Hon = 1'b0;
            Con = 1'b0;
    end
    
    
endmodule
