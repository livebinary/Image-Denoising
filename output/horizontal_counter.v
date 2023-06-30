`timescale 1ns / 1ps

module horizontal_counter(
    input clk_25MHz,
    output reg enable_V_counter = 0,
    output reg Hsync = 0,
    output reg [10:0] H_count_value = 0
    );
	 
	 always @(posedge clk_25MHz)
	 begin
		//active video
		if (H_count_value < 639) begin
			H_count_value <= H_count_value + 1;
			enable_V_counter <= 0;
			Hsync <= 1;
			end

		//front porch
		else if (H_count_value < 655 && H_count_value > 638) begin
			H_count_value <= H_count_value + 1;
			Hsync <= 1;
		end

		//sync pulse
		else if ( H_count_value > 654 && H_count_value < 751) begin
			H_count_value <= H_count_value + 1;
			Hsync <= 0;
		end

		//back porch
		else if (H_count_value > 750 && H_count_value < 799) begin
			Hsync <= 1;
			H_count_value <= H_count_value + 1;
		end
		//reset
		else begin
			H_count_value <= 0;
			enable_V_counter <= 1;
		end
	 end


endmodule
