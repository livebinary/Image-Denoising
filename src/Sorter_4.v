module sort4(i1,i2,i3,i4,o1,o2,o3,o4);
input [7:0]i1,i2,i3,i4;
output [7:0]o1,o2,o3,o4;
wire [7:0]m1,m2,m3,m4,w1,w2,w3,w4;
sorter_2 a41a(i1,i2,m1,w1);
sorter_2 ar1a(i3,i4,m2,w2);

sorter_2 a2f1a(m1,m2,o1,w3);
sorter_2 a3d1a(w1,w2,m4,o4);

sorter_2 a3d1na(w3,m4,o2,o3);
endmodule
