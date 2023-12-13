`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 11:29:18
// Design Name: 
// Module Name: jkffsim
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


module jkffsim();
reg j,k,clk,clr,pr;
wire q,qn;
jkff dut(.j(j),.k(k),.clk(clk),.clr(clr),.pr(pr),.q(q),.qn(qn));
initial begin
clk=0;
forever #5
clk=~clk;
end
initial begin
j=0;k=0;
clr=1;pr=1;
#10;
j=1;k=0;
clr=1;pr=1;
#10;
j=0;k=0;
clr=1;pr=1;
#10;
j=1;k=0;
clr=0;pr=1;
#10;
end
endmodule
