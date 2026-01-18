`timescale 1ns / 1ps

module d_latch(input d, input en, output q, output qbar);
reg dlatch;
always @ (posedge en or d) begin
if (en) dlatch=d;
end
assign q=dlatch;
assign qbar= ~dlatch;
endmodule
