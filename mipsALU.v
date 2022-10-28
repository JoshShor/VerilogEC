//mipsALU.v

module mipsALU(alu_ctl, a, b, alu_out, zero);
	input [3:0] alu_ctl;
	input [7:0] a,b;
	output reg [7:0] alu_out;
	output zero;
	assign zero = (alu_out == 0); //zero is true if alu_out is 0; goes anywhere
	always @(alu_ctl, a, b) begin
		case(alu_ctl)
			0: alu_out <= a & b; // and
			1: alu_out <= a | b; // or
			2: alu_out <= a + b; // add
			6: alu_out <= a - b; // sub
			7: alu_out <= a < b ? 1:0; // slt
			12: alu_out <= ~(a | b); // nor
			default: alu_out <= 0; // fuck all
		endcase
	end
endmodule	