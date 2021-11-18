// Add two simple float 3 exp, 4 mant, unsigned
// SUPPOSE expA == expB 
// To compile
// iverilog adduf7ee.v 
//
// ./a.out  
//
// Exercise: 1- Add Overflow detection
// 2 - Add Round mantissa 0.5 -> +1
// 3 - Add Ea > Eb version  (without round, over detection)
// 4 - Any value of Ea and Eb

    module adduf7ee(
        input  [6:0] a,
        input  [6:0] b,
        output [6:0] c
        );
   654  3210
//  +----+-----+  +----+-----+
//a |100 | 0000|  |100 |1000 | b
//  +-+--+--+--+  +----+---+-+
//    | ea  |              | 01mb
//    v     |  01ma        v
//  +-+--+  +----------->+-+--+
//  |add1|               | add|
//  +-+--+               +-+--+
//    |                    |
//    v    3210            v mc 6bits
//  +-+---+------+      +--+-----+
//c | 101 |0100  |      | 101000 |
//  +-----+--+---+      +--------+
//           ^            543210
//    654    |              +
//           |     sc       |
//           +<-------------+
        
   wire [2:0] ec,ea;
   assign ea = a[6:4];
   assign ec = ea + 1; // dont handle overflow
   wire [5:0] mc,ma,mb;
   assign ma = {2'b01,a[3:0]};
   assign mb = {2'b01,b[3:0]};
   assign mc = ma + mb;
   wire [3:0]sc;
   assign sc = mc[4:1]; // just trunc....how to round ?
   assign c = {ec,sc};

    endmodule




    `timescale 1ns / 1ps
    module stimulus;
    	// Inputs
    	reg [6:0] a,b;
    	// Outputs
    	wire [6:0] c;
    	adduf7ee uut (a,b,c);
        integer i;
     
    		initial begin
                 b = 7'b1001000; #1;
    		 $monitor("ea=%3b,ma=%4b + eb=%3b,mb=%4b = ec=%3b,mc=%4b",a[6:4],a[3:0],b[6:4],b[3:0],c[6:4],c[3:0]);
                 for (i=0; i < 16; i=i+1)
	           begin 
    	             a = {3'b100,i[3:0]}; #1;
       	           end

    		 end
     
    endmodule


