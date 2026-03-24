module mux_2x1 (input 	a, b, sel,
								output 	c);

	assign c = sel ? a : b;
endmodule

/*
module mux_2x1 (input 	a, b, sel,
				output 	reg c);

 always @ ( a or b or sel) begin
	c = sel ? a : b;
 end
endmodule
*/
