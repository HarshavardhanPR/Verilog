module decoder4_16(input [3:0] a, output [15:0] d);

decoder3_8 dec1(.a(a[2:0]), .en(~a[3]), .y(d[7:0]));
decoder3_8 dec2(.a(a[2:0]), .en(a[3]), .y(d[15:8]));

endmodule