`timescale 1ns / 1ps
module ALU #(parameter bus_width = 8) 
(input [bus_width-1:0] a,
input [bus_width-1:0] b,
input carry_in,
input [3:0] opcode,
output reg [bus_width-1:0] y,
output reg carry_out,
output reg borrow,
output reg invalid_op,
output parity,
output zero);

localparam op_add = 1;
localparam op_add_carry = 2;
localparam op_sub =  3;
localparam op_inc = 4;
localparam op_dec = 5;
localparam op_not = 6;
localparam op_and = 7;
localparam op_rol = 8;
localparam op_ror = 9;
localparam op_shl = 10;
localparam op_shr = 11;
localparam op_asl = 12;
localparam op_asr = 13;

always @(*) begin
case(opcode)
op_add : y = a+b;
op_add_carry : {carry_out,y} = a+b+carry_in;
op_sub : {borrow,y} = a-b;
op_inc : {carry_out, y} = a + 1'b1;
op_dec : {borrow,y} = a - 1'b1;
op_not : y = ~a;
op_and : y = a&b; 
op_rol : y = {a[bus_width-2 : 0],a[bus_width-1]};
op_ror : y = {a[0],a[bus_width-1 : 1]};
op_shl : y = {a[bus_width-2 : 0],1'b0};
op_shr : y = {1'b0,a[bus_width-1 : 1]};
op_asl : y = {a[bus_width-2 : 0],1'b0};//op_shl is also same
op_asr : y = {a[bus_width-1],a[bus_width-1 : 1]};
default : invalid_op = 1;
endcase
end
assign parity = ^y;
assign zero = (y==0);
endmodule
