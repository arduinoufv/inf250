// mult.v 7 bits, 3 exp, 4 mant
// iverilog multf7.v 
//
// ./a.out  
//
// Exercise: 1- Add Overflow detection
// 2 - Add Round mantissa 0.5 -> +1
// 3 - Add Ea > Eb version  (without round, over detection)
// 4 - Any value of Ea and Eb

// useful comands: assign a = (b > 2) ? m[3:2] : m[4:3];
// assign sh_mb = mb >> diff;

    module multf7(
        input  [6:0] a,
        input  [6:0] b,
        output [6:0] c
        );
// calculo do expoente ea + eb - 3
// extrair ea e eb
        wire [2:0] ea, eb,ec;
        assign ea = a[6:4];
	assign eb = b[6:4];
        assign ec = ea + eb -3;
// extrair as mantissa e multiplicar
        wire [4:0] ma,mb;
	assign ma = {1'b1,a[3:0]};
        assign mb = {1'b1,b[3:0]};
        wire [9:0] mc;
        assign mc = ma * mb;
// expoente
	assign c[6:4] = (mc[9])? ec+1:ec;
// mantissa
	assign c[3:0] = (mc[9])? mc[8:5]:mc[7:4];   


    endmodule




    `timescale 1ns / 1ps
    module stimulus;
    	// Inputs
    	reg [6:0] a,b;
    	// Outputs
    	wire [6:0] c;
    	multf7 uut (a,b,c);
        integer i;
     
    		initial begin
                 b = 7'b0111010; #1; // b = 1.6
    		 $monitor("ea=%3b,ma=%4b + 3 = eb=%3b,mb=%4b = ec=%3b,mc=%4b",a[6:4],a[3:0],b[6:4],b[3:0],c[6:4],c[3:0]);
                 a = 7'b0111010; #1; // a = 1.6
                 a = 7'b1011010; // a = 6.5
                 b = 7'b0011101; #1; // b = 0.45 

    		 end
     
    endmodule


