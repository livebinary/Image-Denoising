module mux(a,b,s,out1);
input [7:0]a;
input [7:0]b;
input s;
output [7:0]out1;
reg [7:0]out1;
always@(a,b,s)
begin
if(s==1'b1)
out1=a;
else
out1=b;
end
endmodule