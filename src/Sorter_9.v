module sort9(in1,in2,in3,in4,in5,in6,in7,in8,in9,out1,out2,out3,out4,out5,out6,out7,out8,out9);
input [7:0] in1,in2,in3,in4,in5,in6,in7,in8,in9;
output [7:0] out1,out2,out3,out4,out5,out6,out7,out8,out9;
wire [7:0]w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
wire [7:0]m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,l1,l2,l3,l4,l5,l6,l7;
wire [7:0]in11,in22,in33,in44,in55,in66,in77,in88;

sort4 j1(in1,in2,in3,in4,in11,in22,in33,in44);
sort4 hj(in5,in6,in7,in8,in88,in77,in66,in55);
sorter_2 a1(in11,in55,m1,w1);
sorter_2 af(in33,in77,m2,w2);
sorter_2 a2(in22,in66,m3,w3);
sorter_2 a3(in44,in88,m4,w4);
///////////////////stage 1 finished//////////////////////
sorter_2 a4(w1,w2,m5,w5);
sorter_2 ar(m1,m2,m6,w6);
sorter_2 a2f(w3,w4,m7,w7);
sorter_2 a3d(m3,m4,m8,w8);
///////////////////stage 2///////////////////////
sorter_2 a41(w5,w7,m9,w9);
sorter_2 ar1(m5,m7,m10,w10);
sorter_2 a2f1(w6,w8,m11,w11);
sorter_2 a3d1(m6,m8,m12,w12);

sorter_2 a3d12(m12,in9,out1,l1);
sorter_2 a3d13(l1,w12,out2,l2);
sorter_2 a3d1d(l2,m11,out3,l3);
sorter_2 a3d1s(l3,w11,out4,l4);
sorter_2 a3d1dd(l4,m10,out5,l5);
sorter_2 a3d1ss(l5,w10,out6,l6);
sorter_2 a3d1v(l6,m9,out7,l7);
sorter_2 a3dg1(l7,w9,out8,out9);





//////////////////stage 3///////////////////
//assign out1=m12;
//assign out2=w12;
//assign out3=m11;
//assign out4=w11;
//assign out5=m10;
//assign out6=w10;
//assign out7=m9;
//assign out8=w9;
endmodule
