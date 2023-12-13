`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 15:04:14
// Design Name: 
// Module Name: fourbitadder
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


module fourbitadder(
    input [3:0] a,
    input [3:0] b,
    input co,
    output [3:0] s,
    output c4
    );
    wire c1,c2,c3;
    fulladder FA1(a[0],b[0],co,s[0],c1);
    fulladder FA2(a[1],b[1],c1,s[1],c2);
    fulladder FA3(a[2],b[2],c2,s[2],c3);
    fulladder FA4(a[3],b[3],c3,s[3],c4);   
endmodule

module fulladder(
input a,b,co,
output s,c4);
//input a,b,co;
//output s,c4;
assign s=a^b^co;
assign c4=(a^b)&co|a&b;
endmodule
