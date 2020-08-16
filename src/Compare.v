module compare(a,b,out1);
input [7:0]a;
input [7:0]b;
output out1;
reg out1;
always@(a,b)
begin
if(a<b)
out1=1'b1;
else
out1=1'b0;
end
endmodule