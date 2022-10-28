// half_adder_tb.v

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module half_adder_tb;

    reg a, b;
    wire sum, carry;

    localparam period = 5;

    half_adder DUT (.a(a), .b(b), .sum(sum), .carry(carry));
    
	 // initial block executes only once
    initial begin
		 $dumpfile("halfadd.vcd");
		 $dumpvars(1,half_adder_tb);
            // values for a and b
            a = 0;
            b = 0;
            #period; // wait for period 

            a = 0;
            b = 1;
            #period;

            a = 1;
            b = 0;
            #period;

            a = 1;
            b = 1;
            #period;
        end
endmodule