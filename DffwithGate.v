module top_module (
    input clk,
    input in, 
    output out);
    wire x;
    assign x=out^in;
    always@(posedge clk)
        begin
            out=x;
        end
    

endmodule
