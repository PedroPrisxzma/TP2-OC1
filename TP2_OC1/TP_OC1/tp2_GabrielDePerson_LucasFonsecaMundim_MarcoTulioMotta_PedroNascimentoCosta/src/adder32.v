module adder32(
  
  input clk, 
  input [31:0] AddA,
  input [31:0] AddB,
  
  output reg [31:0] SumOut
);
  
  always @(posedge clk) begin      
		
	 SumOut <= AddA + AddB;
  end

endmodule
  