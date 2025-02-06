module top_module (
    input clk,
    input j,
    input k,
    output Q); 
wire a,b,c;
    assign a=Q&(~k);
    assign b=j&(~Q);
    assign c=a|b;
    
    dff d(.d(c),.clk(clk),.q(Q));
endmodule
module dff(
input d,clk,
output reg q);
    always@(posedge clk)
        begin
            q=d;
        end
endmodule
