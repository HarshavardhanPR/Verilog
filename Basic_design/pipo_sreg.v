`timescale 1ns / 1ps
module pipo_sreg #(parameter s_reg_bit = 4) (input [s_reg_bit-1:0] p, input rst, input clk, output reg [s_reg_bit-1:0]q);
always @ (posedge clk) begin
if (rst) q=0;
else q [s_reg_bit-1:0] <= p [s_reg_bit-1:0];
end
endmodule
