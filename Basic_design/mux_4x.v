`timescale 1ns / 1ps

module mux_4x #(parameter width=4) (input[width-1:0] a,
              input [width-1:0] b,
              input [width-1:0] c,
              input [width-1:0] d,
              input [1:0] sel,
              output reg [width-1:0] y);
              
always @ (*) begin
case(sel)
2'b00: y=a;
2'b01: y=b;
2'b10: y=c;
2'b11: y=d;
default : y=a;
endcase
end
endmodule
