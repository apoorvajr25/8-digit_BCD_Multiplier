module BCD_adder7(A,B,C,D,E,F,G,Low,High2,High);
input [3:0]A,B,C,D,E,F,G;
output wire[3:0]High2,High,Low;
wire [7:0]Num;
assign Num = A+B+C+D+E+F+G;
Bin_to_BCD con4(Num,High2,High,Low);
endmodule