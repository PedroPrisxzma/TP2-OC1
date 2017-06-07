module shifter(
  
  input clk, 
  input signed [15:0] Immediate16,
  output reg [31:0] Disp32

);
  
  always @(posedge clk) begin
 
	assign Disp32 = Immediate16<<<2;
 
  end

endmodule
  