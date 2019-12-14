module cpu_top(
    input clk
);

wire [31:0]instr_addr;
wire [31:0]instr_data;
rom rom(
	.clk(clk), 
	.addr(instr_addr), 
	.q(instr_data));

core core(
    	.clk(clk),
	.instr_data(instr_data),
	.last_pc(32'h7),
    	.instr_addr(instr_addr)
);

endmodule
