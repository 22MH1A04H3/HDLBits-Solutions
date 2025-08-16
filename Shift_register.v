module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output  out);
    reg [3:0]s;
    always@(posedge clk)
        begin
            if(!resetn)
                begin
                out<=1'b0;
                 s<=4'b0000;
                end
            else
                begin
                    s<={in,s[3:1]};
                    out<=s[1];
                end

        end
    
endmodule
