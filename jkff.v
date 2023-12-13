`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 11:22:30
// Design Name: 
// Module Name: jkff
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


module jkff(
    input j,
    input k,
    input clk,
    input clr,
    input pr,
    output reg q,
    output reg qn
    );
    always @(negedge clk)
    begin
    if(pr==0)
    begin
    q<=1;
    qn<=0;
    end
    else if(clr==0)
    begin
    q<=0;
    qn<=1;
    end
    else
    begin
    if(j==0 && k==0)
    begin
    q<=q;
    qn<=qn;
    end
    else if(j==0 && k==1)
    begin
    q<=0;
    qn<=1;
    end
    else if(j==1 && k==0)
    begin
    q<=1;
    qn<=0;
    end
    else
    begin
    q<=1;
    qn<=1;
    end
    end
    end
endmodule
