module TB;
  reg [3:0] A, B;
  wire [7:0] P;
  
  array_multiplier am(A,B,P);
  
  initial begin
    $monitor("A = %b: B = %b --> P = %b, P(dec) = %0d", A, B, P, P);
    A = 1; B = 1; #3;
    A = 4; B = 8; #3;
    A = 12; B = 7; #3;
    A = 4'hf; B = 4'hf;
  end
endmodule
