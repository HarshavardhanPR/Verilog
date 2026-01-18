`timescale 10ns / 1ps
module comp_n #(parameter N=4)(input [N-1:0] a,input [N-1:0] b,output reg a_lesser, output reg a_greater, output reg a_equal);
always @(*) begin
a_lesser = (a < b);
a_equal = (a == b);
a_greater = (a > b);
end
endmodule
