module top_module (
    input clk,
    input reset,
    output [9:0] q);
    reg [9:0]a;
    initial
        a=10'b1;
    always@(posedge clk)
        begin
            if(reset)
                a<=10'd0;
            else if(a == 10'h3e7)
                a<=10'd0;
            else
                a<=a+1;
        end
assign q= a;
    
endmodule
