module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0]i;
    always@(posedge clk)
        begin
            
            i<=in;
            pedge<=((~i)&(in));
        end
endmodule
