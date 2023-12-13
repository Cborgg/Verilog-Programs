`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 08:58:46
// Design Name: 
// Module Name: fourbitaddersim
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


module fourbitaddersim();
reg[3:0] a,b;
reg sub;
wire[3:0] result;
fourbitadder dut(.a(a),.b(b),.sub(sub),.result(result));
initial begin
a=4'b0101;
b=4'b1000;
sub=1;
#10;
a=4'b0100;
b=4'b1001;
sub=0;
end
endmodule
