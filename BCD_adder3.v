module BCD_adder3(A,B,C,Low,High2,High);
    input [3:0]A,B,C;
    output wire[3:0]High2,High,Low;
    wire [7:0]Num;
    assign Num = A+B+C;
    Bin_to_BCD con2(Num,High2,High,Low);
endmodule