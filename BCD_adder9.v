module BCD_adder9(A,B,C,D,E,F,G,H,I,Low,High2,High);
input [3:0]A,B,C,D,E,F,G,H,I;
output wire[3:0]High2,High,Low;
wire [7:0]Num;
assign Num = A+B+C+D+E+F+G+H+I;
Bin_to_BCD con5(Num,High2,High,Low);
endmodule