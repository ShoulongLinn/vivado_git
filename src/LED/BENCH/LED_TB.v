`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/15 12:14:46
// Design Name: 
// Module Name: LED_TB
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


module LED_TB();

reg clk;
reg rst;
wire [1:0] led;
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    #1000000 $finish;
end
LED  inst_LED (
    .clk               (clk),
    .rst               (rst),
    .led               (led) 
);
endmodule
