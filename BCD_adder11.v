module BCD_adder11(A,B,C,D,E,F,G,H,I,J,K,Low,High2,High);
input [3:0]A,B,C,D,E,F,G,H,I,J,K;
output wire[3:0]High2,High,Low;
wire [7:0]Num;
assign Num = A+B+C+D+E+F+G+H+I+J+K;
Bin_to_BCD con6(Num,High2,High,Low);
endmodule