//mipsALU.v

module mipsALU(alu_ctl, a, b, alu_out, zero);
	input [3:0] alu_ctl;
	input [7:0] a,b;
	output reg [7:0] alu_out;
	output zero;
	assign zero = (alu_out == 0); //zero is true if alu_out is 0; goes anywhere
	always @(alu_ctl, a, b) begin
		case(alu_ctl)
			4'b0000: alu_out = a & b; // and
			4'b0001: alu_out = a | b; // or
			4'b0010: alu_out = a + b; // add
			4'b0110: alu_out = a - b; // sub
			4'b0111: alu_out = a < b ?8'd1:8'd0 ; // slt
			4'b1100: alu_out = ~(a | b); // nor
			default: alu_out <= 0; // f all
		endcase
	end
endmodule