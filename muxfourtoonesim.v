`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 15:19:34
// Design Name: 
// Module Name: muxfourtoonesim
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


module muxfourtoonesim();
reg[3:0] a,b;
wire[3:0] s;
reg ci;
wire c4;
fourbitadder dut(.a(a),.b(b),.co(ci),.s(s),.c4(c4));
initial
begin
a=4'b0011;
b=4'b0001;
ci=1;
#100;
a=4'b0010;
b=4'b0001;
ci=1;
#100;
a=4'b0000;
b=4'b0001;
ci=0;
end
endmodule
