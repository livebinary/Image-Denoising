`timescale 1ns / 1ps

module clock_divider(
    input clk,
    output reg clk_25MH
    );
	 
reg [1:0] counter;

always @(posedge clk)
begin
	if (counter == 4)begin 
		clk_25MH <= ~clk_25MH;
		counter <= 0;
		end
	else
      counter <= counter + 1;
end

endmodule