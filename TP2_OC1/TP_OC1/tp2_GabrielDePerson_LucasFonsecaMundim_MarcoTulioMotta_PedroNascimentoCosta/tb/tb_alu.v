module tb_ALU(

	output reg [3:0] tb_op,
	output reg [31:0] tb_A,
	output reg [31:0] tb_B,
	wire [31:0] tb_ALUOut,
	wire tb_neg,
	wire tb_zero,
	wire tb_overflow
);

	reg clk = 0;

	ALU instancias(
	
		.op(tb_op),
		.A(tb_A),
		.B(tb_B),
		.Neg(tb_neg),
		.Zero(tb_zero),
		.Overflow(tb_overflow),
		.ALUOut(tb_ALUOut),
		.clk(clk)
	);	

	initial begin


		tb_op = 1;//1, 2, 4, 8
		tb_A = 1;
		tb_B = 1;

		$display("RESULTADO DO PERSON\n");
		$monitor("%b\n", tb_ALUOut);
		//$monitor("Zero -> %d\n", tb_zero);
		//$monitor("Neg -> %d\n", tb_neg);
		//$monitor("Overflow -> %d\n", tb_overflow); 
	end

	always #5 clk = ~clk;

endmodule 