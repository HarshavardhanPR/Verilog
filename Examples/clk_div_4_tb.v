module clk_div_4_tb;
  reg clk = 0;
  reg rst;
  wire q;
  
  clk_div_4 DUT(.clk(clk),.rst(rst),.q(q));
  
  always #10 clk = ~clk;
  
  initial begin
    rst=0;
    #5;
    rst=1; #6;
    rst=0;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    #200;
    $finish;
  end
  
endmodule
