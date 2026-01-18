module mux1(S,I0,I1,Y);
input S,I0,I1;
output Y;
assign Y = ((~S)&I0) | (S & I1);
endmodule
