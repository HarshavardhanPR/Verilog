module even_freq_div_tb;
  reg clk = 0;
  reg rst;
  reg t;
  wire q,q4,q8;
  
  even_freq_div DUT(.clk(clk),.rst(rst),.t(t),.q(q),.q4(q4),.q8(q8));
  
  always #10 clk = ~clk;
  
  initial begin
    rst=0;t=0;
    #5;t=1;
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

/*
module clk_div_even_tb;
  reg clk = 0;
  reg rst;
  wire q,q4,q8;
  
  clk_div_even DUT(.clk(clk),.rst(rst),.q(q),.q4(q4),.q8(q8));
  
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
*/
  
  
