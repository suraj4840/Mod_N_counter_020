`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2023 05:29:05 PM
// Design Name: 
// Module Name: mod_N_counter_tb
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


module mod_N_counter_tb();

reg clk,rst;

//parameter N= 10;
parameter width=4;
wire [width-1 :0]count;


mod_N_counter  dut(clk,rst,count);

initial 
begin
clk =1'b0;
rst =1'b1;
#10
rst =1'b0;
#200
$finish;
end

always #5 clk=~clk;

endmodule
