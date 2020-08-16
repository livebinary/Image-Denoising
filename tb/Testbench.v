////////////////////////////////testbench below/////////////////////////////////////

module denois;

reg unsigned [7:0]img[10000:1];
wire  unsigned [7:0]new;
integer i,file_id,file_id1,j,k;
reg clk;

initial
begin
file_id=$fopen("denoised_image.txt");
file_id1=$fopen("fin.txt");
$readmemb("img.txt",img); 
end
initial 
begin
i=0;
j=0;
k=1;
clk=1'b0;
end
always 
begin
#10;
clk=~clk;
end
always@(posedge(clk))
begin
i=i+1;
j=j+1;
#10 $fdisplay(file_id,"%d",new);
end
always@(i,j)
begin
if(j==99) begin
i=100*k +1;
j=1;
k=k+1;
if(k==99) begin $fclose(file_id);
#1000000 $fdisplay(file_id1,"%d",1'd0);
 $fclose(file_id1);
 end
end
end
median ma(img[i],img[i+1],img[i+2],img[i+100],img[i+101],img[i+102],img[i+200],img[i+201],img[i+202],new);
endmodule


//////////////////////////////////////////////////end///////////////////////////////////////