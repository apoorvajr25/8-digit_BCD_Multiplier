module Array_multiplier_BCD(x1,y1,H,L);
input [3:0]x1,y1;
output [3:0]H,L;

wire [3:0]x,y;
wire [7:0]c;
wire [3:0]t1,t2,t3;
wire [15:0]p;
wire [3:0]car1,car2,car3;
wire FA_SUM,FA_CARRY;
wire [3:0]tH1,tH2,tH3,tH4,t_H;          // These wires are used for HIGHER digit of BCD adder
wire [3:0]tL1,tL2,tL3,tL4,t_L;          // These wires are used for LOWER digit of BCD adder
assign x=(x1>9)?4'bx:x1,  y=(y1>9)?4'bx:y1;
and (p[0], x[0], y[0]),
    (p[1], x[1], y[0]),
    (p[2], x[2], y[0]),
    (p[3], x[3], y[0]);
and (p[4], x[0], y[1]),
    (p[5], x[1], y[1]),
    (p[6], x[2], y[1]),
    (p[7], x[3], y[1]);
and (p[8], x[0], y[2]),
    (p[9], x[1], y[2]),
    (p[10], x[2], y[2]),
    (p[11], x[3], y[2]);
and (p[12], x[0], y[3]),
    (p[13], x[1], y[3]),
    (p[14], x[2], y[3]),
    (p[15], x[3], y[3]);
   
   full_adder f1(p[1],p[4],1'b0,t1[0],car1[0]),
              f2(p[2],p[5],car1[0],t1[1],car1[1]),
              f3(p[3],p[6],car1[1],t1[2],car1[2]),
              f4(car1[2],p[7],1'b0,t1[3],car1[3]);
   full_adder f5(p[8],t1[1],1'b0,t2[0],car2[0]),
              f6(p[9],t1[2],car2[0],t2[1],car2[1]),
              f7(p[10],t1[3],car2[1],t2[2],car2[2]),
              f8(p[11],car2[2],car1[3],t2[3],car2[3]);
   full_adder f9(p[12],t2[1],1'b0,t3[0],car3[0]),
              f10(p[13],t2[2],car3[0],t3[1],car3[1]),
              f11(p[14],t2[3],car3[1],t3[2],car3[2]),
              f12(p[15],car3[2],car2[3],t3[3],car3[3]);
assign c={car3[3],t3,t2[0],t1[0],p[0]};

BCD_adder2 B1({1'b0,c[6],c[5],c[4]},{2'b0,c[6],c[5]},tL1,tH1);  
BCD_adder2 B2({c[3],3'b0},{1'b0,c[6],c[5],1'b0},tL2,tH2);  
BCD_adder2 B3({1'b0,c[4],c[4],1'b0},{1'b0,c[2],c[1],c[0]},tL3,tH3);  
full_adder fa(tH2[0],tH3[0],0,FA_SUM,FA_CARRY);
BCD_adder2 B4(tL1,{2'b0,FA_CARRY,FA_SUM},tL4,tH4);  
BCD_adder2 B5(tL2,tL3,L,t_L);  
BCD_adder2 B6(tL4,{3'b0,t_L[0]},H,t_H);  
endmodule