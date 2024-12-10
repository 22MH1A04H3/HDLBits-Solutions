module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]x,y;
    wire w;
   
    add16 a1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cin(0),.cout(w));
    add16 a2(.a(a[31:16]),.b(b[31:16]),.cin(0),.sum(x));
    add16 a3(.a(a[31:16]),.b(b[31:16]),.cin(1),.sum(y));
  
  assign sum[31:16] = w ? y : x;
endmodule
	