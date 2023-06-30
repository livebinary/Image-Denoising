`timescale 1ns / 1ps

module vertical_counter(
    input clk_25MHz,
    input enable_V_counter,
    output reg Vsync = 0,
    output reg [10:0] V_count_value = 0
    );

	 always @(posedge clk_25MHz)
	 begin
		if (enable_V_counter == 1'b1)begin
			//active video
			if (V_count_value < 479) begin
				V_count_value <= V_count_value + 1;
				Vsync <= 1;
				end
			
			//front porch
			else if (V_count_value > 478 && V_count_value < 490)begin
				V_count_value <= V_count_value + 1;
				Vsync <= 1;
			end
			
			//sync pulse
			else if (V_count_value > 489 && V_count_value < 492)begin
				V_count_value <= V_count_value + 1;
				Vsync <= 0;
			end

			//back porch
			else if (V_count_value > 491 && V_count_value < 523)begin
				V_count_value <= V_count_value + 1;
				Vsync <= 1;
			end

			//reset
			else
				V_count_value <= 0;
		end
	 
	 end
endmodule
