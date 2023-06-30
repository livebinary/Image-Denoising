`timescale 1ns / 1ps

module top(
    input clk,
    input [7:0] Red_in,
    input [7:0] Green_in,
    input [7:0] Blue_in,
    output Hsynq,
    output Vsynq,
    output [7:0] Red,
    output [7:0] Green,
    output [7:0] Blue
    );
	
	wire clk_25;
	wire enable_v_count;
	wire [10:0] H_count_value;
	wire [10:0] V_count_value;
	clock_divider VGA_CLK(clk, clk_25);
	horizontal_counter VGA_Hor(clk_25, enable_v_count, Hsynq , H_count_value);
	vertical_counter VGA_Ver(clk_25, enable_v_count, Vsynq , V_count_value);
	
	
	
	assign Red = (H_count_value < 639 && H_count_value >=0 && V_count_value < 479 && V_count_value >= 0) ? Red_in:8'h0;
	assign Green = (H_count_value < 639 && H_count_value >=0 && V_count_value < 479 && V_count_value >= 0) ? Green_in:8'h0;
	assign Blue = (H_count_value < 639 && H_count_value >=0 && V_count_value < 479 && V_count_value >= 0) ? Blue_in:8'h0;


endmodule
