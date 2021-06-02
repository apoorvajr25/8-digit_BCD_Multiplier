module BCD_adder13(A,B,C,D,E,F,G,H,I,J,K,L,M,Low,High2,High);
input [3:0]A,B,C,D,E,F,G,H,I,J,K,L,M;
output wire[3:0]High2,High,Low;
wire [7:0]Num;
assign Num = A+B+C+D+E+F+G+H+I+J+K+L+M;
Bin_to_BCD con7(Num,High2,High,Low);
endmodule