module BCD_adder2(A,B,Low,High);
input [3:0]A,B;
output wire[3:0]High,Low;
wire [3:0]High2;
wire [7:0]Num;
assign Num = A+B;
Bin_to_BCD con2(Num,High2,High,Low);
endmodule