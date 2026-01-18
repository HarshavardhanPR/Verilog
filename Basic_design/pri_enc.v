`timescale 1ns / 1ps
module pri_enc(input [3:0] d, output reg v, output reg [1:0]y);
always @ (*) begin
if (d[3]) y=2'd3;
else if (d[2]) y=2'd2;
else if (d[1]) y=2'd1;
else if (d[0]) y=2'd0;
else y=2'd0;
end
always @ (*) begin
if (!d) v=0;
else v=1;
end
endmodule
