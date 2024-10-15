`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Chad Lim Jin Jie
// 
// Create Date: 15.10.2024 23:08:42
// Design Name: 
// Module Name: vaddoflow
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


module vaddoflow(
    input [3:0] a,
    input [3:0] b,
    output [6:0] seg_L,
    output oflow
    );
    wire[4:0]x;
    
    assign x[3:0] = a[3:0] + b[3:0];
    
    vsevenseg M1 (.x(x), .seg_L(seg_L));
    assign oflow = x[4];
    
endmodule
