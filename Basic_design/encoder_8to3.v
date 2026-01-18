`timescale 10ns / 1ps
module encoder_8to3(input [7:0] d, input enable, output reg [2:0] y);
always @ (*) begin
    if (enable == 0) y=0;
    else begin
    case(d)
    8'b00000001: y=000;
    8'b00000010: y=001;
    8'b00000100: y=010;
    8'b00001000: y=011;
    8'b00010000: y=100;
    8'b00100000: y=101;
    8'b01000000: y=110;
    8'b10000000: y=111;
    default : y=000;
    
    endcase
    end
end   
endmodule
