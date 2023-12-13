`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 17:07:57
// Design Name: 
// Module Name: eightoonemuxsim
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


module eightoonemuxsim;
reg [7:0] a;
reg [2:0] s;
wire out;
eighttoonemux dut(a,s,out);
initial begin
    a = 8'b00000010;
    s = 3'b001;
    
    // Allow some time for the initial values to propagate
    #10;


    // Stop simulation
end
endmodule
