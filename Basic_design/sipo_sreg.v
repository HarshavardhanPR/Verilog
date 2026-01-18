`timescale 1ns / 1ps
module sipo_sreg #(parameter sreg_bits = 4)(input sdi, input rst,clk, output reg [sreg_bits-1:0] q);
always @ (posedge clk) begin
if (rst) q <= 0;
else q [sreg_bits-1:0] <= {q[sreg_bits-1:1],sdi};
end
endmodule
