module even_freq_div (input clk,t,rst,output reg q=0,q4=0,q8=0);
// t=1; always high for mod-2 up counter
always@(posedge clk) begin
    if(rst) q <= 1'b0;
    else if(t) q <= ~q;
    else q<=q;  
end

  always@(posedge q) q4<=~q4;
  always@(posedge q4) q8<=~q8;
    
endmodule

/*
module clk_div_even (input clk,rst,output reg q,q4,q8);
reg [2:0] count;
// count = 000 => 001 => 010 => 011 => 100 => 101 => 110 => 111
always@(posedge clk) begin
  if(rst) count <= 3'b000;
  else count <= count+1'b1;  
end    
  
assign q = count[0];
assign q4 = count[1];
assign q8 = count[2];
endmodule
*/
