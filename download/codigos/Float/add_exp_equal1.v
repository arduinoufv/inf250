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
// 5 - Float multiplication
// useful comands: assign a = (b > 2) ? m[3:2] : m[4:3];
// assign sh_mb = mb >> diff;


module full(input a,input b, input  c, output s, output v);
assign s = a ^ b ^ c;
assign v = a & (b|c) | b & c;
endmodule // 6 portas

module add5 ( input [4:0] a,b,output [5:0] c);

wire [3:0] v;
full a0 ( a[0],b[0],1'b0,c[0],v[0]);
full a1 ( a[1],b[1],v[0],c[1],v[1]);
full a2 ( a[2],b[2],v[1],c[2],v[2]);
full a3 ( a[3],b[3],v[2],c[3],v[3]);
full a4 ( a[4],b[4],v[3],c[4],c[5]);
endmodule  // 5 * 6 = 30 portas



module plusone_simples
(input [2:0] a, output [2:0] c
);
// ------------- Design implementation --------
assign c[0] =  ~a[0];
assign c[1] =  a[1]^a[0];
assign c[2] =  a[2]^ (a[1]&a[0]);
endmodule


module addfloat(
        input  [6:0] a,
        input  [6:0] b,
        output [6:0] c
        );
      wire [2:0] ec,ea,eb;
      assign ea = a[6:4];
      assign eb = b[6:4];
      assign ec = ea; // Incrementa depois de necessario….
      wire [2:0] diff;
      assign  diff = ea - eb;  // Calcula a diferença de ea e eb	
      wire [5:0] mc,ma,mb;
      assign ma = {2'b01,a[3:0]};
      assign mb = {2'b01,b[3:0]} >> diff; // Deslocar para ajustar a mantissa 
      assign mc = ma + mb;
      wire [3:0] sc;
      assign sc = ( mc[5] ) ? mc[4:1] : mc[3:0] ; // Aqui deve tratar se ajusta ou não a mantissa de mais 1 shift
     wire [2:0] fc;
     assign fc =  ( mc[5] ) ? ea+1 :ea; // Aqui deve tratar se ajusta ou não o expoente….
      assign c = {fc,sc};
    endmodule




    `timescale 1ns / 1ps
    module stimulus;
    	// Inputs
    	reg [6:0] a,b;
    	// Outputs
    	wire [6:0] c;
	wire o;
    	addfloat uut (a,b,c);
        integer i;
     
    		initial begin
                 b = 7'b1001000; #1; // b = 3
    		 $monitor("ea=%3b,ma=%4b + 3 = eb=%3b,mb=%4b = ec=%3b,mc=%4b over %b",a[6:4],a[3:0],b[6:4],b[3:0],c[6:4],c[3:0],o);
                 a = 7'b1101000; #1; // a = 12
                 a = 7'b1101000; b = 7'b1101000; #1; // a,b = 12 

    		 end
     
    endmodule


