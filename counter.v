`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2023 05:22:59 PM
// Design Name: 
// Module Name: mod_N_counter
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


module mod_N_counter
#(parameter N= 10,
  parameter width=4)
  
 (clk,rst,count);


input clk,rst;
output reg [width-1:0] count;   


always @(posedge clk , posedge rst)
begin
    if(rst)
       count<='d0; 
     else
        if(count< N-1)
         count<= count+1;
         else
         count = 'd0;   // upcounter
        
end          
 
endmodule
