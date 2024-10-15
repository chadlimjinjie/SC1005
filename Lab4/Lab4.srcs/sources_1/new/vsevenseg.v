`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2024 21:49:27
// Design Name: 
// Module Name: vsevenseg
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


module vsevenseg(
    input [3:0] x,
    output reg [6:0] seg_L
    );

    always @ *
        case (x)
            4'd0: seg_L = 7'b100_0000;  // 0
            4'd1: seg_L = 7'b111_1001;  // 1
            4'd2: seg_L = 7'b010_0100;  // 2
            4'd3: seg_L = 7'b011_0000;  // 3
            4'd4: seg_L = 7'b001_1001;  // 4
            4'd5: seg_L = 7'b001_0010;  // 5
            4'd6: seg_L = 7'b000_0010;  // 6
            4'd7: seg_L = 7'b111_1000;  // 7
            4'd8: seg_L = 7'b000_0000;  // 8
            4'd9: seg_L = 7'b001_0000;  // 9
            4'd10: seg_L = 7'b000_1000; // A
            4'd11: seg_L = 7'b000_0011; // B
            4'd12: seg_L = 7'b100_0110; // C
            4'd13: seg_L = 7'b010_0001; // D
            4'd14: seg_L = 7'b000_0110; // E
            4'd15: seg_L = 7'b000_1110; // F
            default: seg_L = 7'b111_1111; // Default case (all segments off)
        endcase 
endmodule
