//mult4tol_tb.v

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module mult4tol_tb;

    reg [31:0] in1, in2, in3, in4;
	reg [1:0] sel;
    wire [31:0] out;
    localparam period = 5; 
	
		mult4tol DUT (.in1(in1), .in2(in2), .in3(in3), .in4(in4), .sel(sel), .out(out));
	
    initial begin
		 $dumpfile("m41mux.vcd");
		 $dumpvars(1,mult4tol_tb);
		 sel = 2'b00;
		 in1 = 0;
		 in2 = 1;
		 in3 = 0;
		 in4 = 1;
		 #period; // wait for period	
		 sel = 2'b01;
		 in1 = 0;
		 in2 = 1;
		 in3 = 0;
		 in4 = 1;
		 #period; // wait for period 
		 sel = 2'b10;
		 in1 = 0;
		 in2 = 1;
		 in3 = 0;
		 in4 = 1;
		 #period; // wait for period
		 sel = 2'b11;
		 in1 = 0;
		 in2 = 1;
		 in3 = 0;
		 in4 = 1;
		 #period; // wait for period
	end
endmodule