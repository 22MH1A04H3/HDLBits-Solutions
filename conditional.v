module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    reg [7:0]m,n;
    assign m=(a<b)? a:b;
    assign n=(c<d)? c:d;
    assign min=(m<n)? m:n;
    
        
  
endmodule
