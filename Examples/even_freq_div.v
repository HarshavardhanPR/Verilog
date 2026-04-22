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
