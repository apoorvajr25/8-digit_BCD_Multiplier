module BCD_adder17(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,Low,High2,High);
input [3:0]A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q;
output wire[3:0]High2,High,Low;
wire [7:0]Num;
assign Num = A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q;
Bin_to_BCD con9(Num,High2,High,Low);
endmodule