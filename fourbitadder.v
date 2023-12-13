`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 08:54:26
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
    input sub,
    output reg[3:0] result,
    integer i
    );
    always@(*)
    begin
    if(sub==1)
    begin
    for(i=0;i<4;i=i+1)
    begin
    result[i]=a[i]-b[i];
    end
    end
    else
    begin
    for(i=0;i<4;i=i+1)
    begin
    result[i]=a[i]+b[i];
    end
    end
    end
    
endmodule
