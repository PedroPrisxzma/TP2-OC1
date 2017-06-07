module tb_shifter(

	output reg [15:0] tb_imm16,
	input [31:0] tb_disp32
);

	reg clk = 0;

	shifter instancias(
	
		.Immediate16(tb_imm16),
		.Disp32(tb_disp32),
		.clk(clk)
	);	

	initial begin

		tb_imm16 = -1;

		$display("RESULTADO DO PERSON\n");
		$monitor("%b\n", tb_disp32);
	end

	always #5 clk = ~clk;

endmodule 