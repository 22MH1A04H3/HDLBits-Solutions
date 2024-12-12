module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w,k;
    wire [31:0]y;
 
    assign y=b^{32{sub}};
    add16 a1(.a(a[15:0]),.b(y[15:0]),.sum(sum[15:0]),.cout(w),.cin(sub));
    
    add16 a2(.a(a[31:16]),.b(y[31:16]),.sum(sum[31:16]),.cin(w),.cout(k));
  
endmodule
