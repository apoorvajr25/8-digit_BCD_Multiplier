module BCD_adder5(A,B,C,D,E,Low,High2,High);
    input [3:0]A,B,C,D,E;
    output wire[3:0]High2,High,Low;
    wire [7:0]Num;
    assign Num = A+B+C+D+E;
    Bin_to_BCD con4(Num,High2,High,Low);
endmodule