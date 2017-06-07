module ALU(
  
  input clk, 
  input [3:0]op,
  input [31:0] A,
  input [31:0] B,
  
  output reg [31:0] ALUOut, 
  output reg Neg,
  output reg Zero,
  output reg Overflow
  
);

  always @(posedge clk) begin
    
    case(op)
      4'b0001:
	begin
		ALUOut=A+B; //verificar overflow (MSB) pra SOMA. e verificar zero
      		if(~ALUOut)
			Zero <= 1;
		else
			Zero <= 0;
		if(A[31] & B[31] & ~ALUOut[31])
			Overflow <= 1;
		else
			Overflow <= 0;
		if(~A[31] & ~B[31] & ALUOut[31])
			Overflow <= 1;
		else
			Overflow <= 0;
		if(ALUOut[31])
			Neg <= 1;
		else
			Neg <= 0;
	end
	4'b0010:
	begin
		ALUOut=A-B;
		if(~ALUOut)
			Zero <= 1;
		else
			Zero <= 0;
		if(ALUOut[31])
			Neg <= 1;
		else
			Neg <= 0;
		Overflow <= 0;
	end
        4'b0100: 
	begin
		if(A & B)
			ALUOut = 1;
		else
			ALUOut = 0;
		if(~ALUOut)
			Zero = 1;
		else
			Zero = 0;

        end
	4'b1000:
	begin
 		if(A | B)
			ALUOut = 1;
		else if(A | ~B)
			ALUOut = 1;
		else if(~A | B)
			ALUOut = 1;
		else
			ALUOut = 0;
    	end
    endcase

  end
	
endmodule
  
  