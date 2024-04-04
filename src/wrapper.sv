module wrapper(
	input logic CLOCK_50,
	input logic [17:0] SW,
	output logic [16:0] LEDR,
	output logic [7:0] LEDG,
	output logic [6:0] HEX0,
	output logic [6:0] HEX1,
	output logic [6:0] HEX2,
	output logic [6:0] HEX3,
	output logic [6:0] HEX4,
	output logic [6:0] HEX5,
	output logic [6:0] HEX6,
	output logic [6:0] HEX7,
	output logic LCD_EN,
	output logic LCD_RW,
	output logic LCD_RS,
	output logic LCD_ON,
	output logic [7:0] LCD_DATA
	);
	
	
	
	singlecycle CPU(
		.clk_i(CLOCK_50),
		.rst_ni(SW[17]),
		.io_sw_i({{15{1'b0}}, SW[16:0]}),
		.io_lcd_o({LCD_ON, {20{1'b0}}, LCD_EN, LCD_RS, LCD_RW, LCD_DATA}),
		.io_ledg_o({{24{1'b0}}, LEDG}),
		.io_ledr_o({{15{1'b0}}, LEDR}),
		.io_hex0_o({{25{1'b0}} ,HEX0}),
		.io_hex1_o({{25{1'b0}} ,HEX1}),
		.io_hex2_o({{25{1'b0}} ,HEX2}),
		.io_hex3_o({{25{1'b0}} ,HEX3}),
		.io_hex4_o({{25{1'b0}} ,HEX4}),
		.io_hex5_o({{25{1'b0}} ,HEX5}),
		.io_hex6_o({{25{1'b0}} ,HEX6}),
		.io_hex7_o({{25{1'b0}} ,HEX7})
		);
	
endmodule
