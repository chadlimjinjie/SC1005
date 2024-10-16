`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2024 09:08:29
// Design Name: 
// Module Name: q1_traffic_light
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


module q1_traffic_light(
    input [2:0] x,
    output [1:0] track
    );
    
    // x: 000, track: 11, x:001, track: 10, x:010, track: 01, x:100, track: 00
    assign track = (x == 3'b100) ? 2'b00 : (x == 3'b010) ? 2'b01 : (x == 3'b001) ? 2'b10 : 2'b11;
    
endmodule
