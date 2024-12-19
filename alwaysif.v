// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    assign out_assign=(sel_b1==0|sel_b2==0) ? a:b;
    always@(*)
        begin
            if(sel_b1==0|sel_b2==0)
                begin
                    out_always=a;
                end
        else 
            begin
                out_always=b;
            end
        end
    

endmodule
