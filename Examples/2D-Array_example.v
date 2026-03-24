module matrix_2d;
  // 4 rows and 4 columns, each element is 8 bits
  reg [7:0] matrix [0:3][0:3]; 
  integer r, c;
initialbegin
    // Initialize a diagonal matrix
    for (r = 0; r < 4; r = r + 1) begin
      for (c = 0; c < 4; c = c + 1) begin
        if (r == c)
          matrix[r][c] = 8'hFF; // Diagonal elements
        else
          matrix[r][c] = 8'h00; // Others
      end
    end
// Displaying the matrix
    for (r = 0; r < 4; r = r + 1) begin
      $display("%h %h %h %h", matrix[r][0], matrix[r][1], matrix[r][2], matrix[r][3]);
    end
  end
endmodule
