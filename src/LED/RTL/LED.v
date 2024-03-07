`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/15 12:08:58
// Design Name: 
// Module Name: LED
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


module LED(
    input clk,
    input rst,
    output [1:0] led
);

reg [31:0] cnt;
assign led = cnt == 32'd100 ? 2'b11 : 2'b00;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        cnt <= 0;
    end 
    else if (cnt == 32'd200) begin
        cnt <= 0;
    end
    else begin
        cnt <= cnt + 1; 
    end
end
endmodule
