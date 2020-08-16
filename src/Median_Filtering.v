
module median(s1,s2,s3,s4,s5,s6,s7,s8,s9,med);
input [7:0]s1,s2,s3,s4,s5,s6,s7,s8,s9;
output [7:0]med;
wire [7:0]p1,p2,p3,p4,p5,p6,p7,p8,p9;
sort9 a1(s1,s2,s3,s4,s5,s6,s7,s8,s9,p1,p2,p3,p4,p5,p6,p7,p8,p9);
assign med=p5;
endmodule




