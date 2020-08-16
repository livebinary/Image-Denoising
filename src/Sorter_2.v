module sorter_2(a,b,min,max);
input [7:0]a;
input [7:0]b;
output [7:0]min;
output [7:0]max;
wire cmp;
compare c1(a,b,cmp);
mux m1(a,b,cmp,min);
mux m2(b,a,cmp,max);
endmodule