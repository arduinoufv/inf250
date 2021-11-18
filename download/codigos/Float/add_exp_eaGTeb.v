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

    module adduf7eaGTeb(
        input  [6:0] a,
        input  [6:0] b,
        output [6:0] c
        );

        
   wire [2:0] ea,eb;
   wire [2:0] ec;
   wire [2:0] diff;	
   assign ea = a[6:4];
   assign eb = b[6:4];

   assign diff = ea - eb;
    	
   wire [5:0] mc,ma,mb;
   reg [5:0] sh_mb;
   assign ma = {2'b01,a[3:0]};
   assign mb = {2'b01,b[3:0]};
 
   always @*
    case (diff)
    3'b000 :     
      sh_mb = mb;
    3'b001 :     
      sh_mb = {1'd0,mb[5:1]};
    3'b010 :     
      sh_mb = {2'd0,mb[5:2]};
    3'b011 :     
      sh_mb = {3'd0,mb[5:3]};
    3'b100 :     
      sh_mb = {4'd0,mb[5:4]};
    3'b101 :     
      sh_mb = {5'd0,mb[5]};
    3'b110 :     
      sh_mb = 6'd0;
    3'b111 :     
      sh_mb = 6'd0;
    endcase
  

   assign mc = ma + sh_mb;
   wire [3:0] sc;
   assign sc = (mc[5]) ? mc[4:1]:mc[3:0]; // conditional shift mantissa
   assign ec = (mc[5]) ? ea+1:ea; // increase ec
   assign c = {ec,sc};

    endmodule




    `timescale 1ns / 1ps
    module stimulus;
    	// Inputs
    	reg [6:0] a,b;
    	// Outputs
    	wire [6:0] c;
    	adduf7eaGTeb uut (a,b,c);
        integer i;
     
    		initial begin
                 b = 7'b1001000; #1;
    		 $monitor("ea=%3b,ma=%4b + eb=%3b,mb=%4b = ec=%3b,mc=%4b",a[6:4],a[3:0],b[6:4],b[3:0],c[6:4],c[3:0]);
                 a = 7'b1011000; #1;
		  a=7'b1100011; #1;
    		 end
initial
 begin
    $dumpfile("test.vcd");
    $dumpvars(0,stimulus);
 end
     
    endmodule


