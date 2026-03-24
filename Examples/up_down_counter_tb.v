module tb_counter;
  reg clk;                     
  reg rstn;                   
  wire [3:0] out;       

  counter   c0 ( .clk (clk),
                 .rstn (rstn),
                .cnt (out));

  always #5 clk = ~clk;

  initial begin
    clk <= 0;
    rstn <= 0;

    #20   rstn <= 1;
    #80   rstn <= 0;
    #50   rstn <= 1;

    #20 $finish;
  end
endmodule
