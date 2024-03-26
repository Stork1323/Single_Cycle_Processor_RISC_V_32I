module lsu( // A memory for loading(read) or storing(write) data words
	input logic [31:0] addr_i, dataW_i,
	input logic MemRW_i,
	input logic clk_i,
	input logic rst_ni,
	output logic [31:0] dataR_o
	);
	
	logic [31:0] mem [512]; //2KB,  1KB for data memory, 256B for output peripherals, 256B for input peripherals, 512B for reserved
	
	/*
			mem[0:255] for data memory
			mem[256:319] for output peripherals
			mem[320:383] for input peripherals
			mem[384:511] for reserved
	*/
	
	always_ff @(posedge clk_i) begin
		if (MemRW_i) mem[addr_i] <= dataW_i;
	end
	
	assign dataR_o = (rst_ni == 1'b0) ? 32'b0 : mem[addr_i];
	
endmodule
