module top_module();
reg clk,in;
    reg [2:0]s;
    wire out;
    q7 uut(.clk(clk),.in(in),.out(out),.s(s));
    initial 
        begin
            clk=0;
            forever #5 clk=~clk;
        end
    initial
        begin
            in=0;s=3'b010;
            #5;
            in=0;s=3'b010;
            #5;
            in=0;s=3'b110;
            #5;
            in=0;s=3'b110;
            #5;in=1;s=3'b010;
            #5;in=1;s=3'b010;
            #5;in=0;s=3'b111;
            #5;in=0;s=3'b111;
            #5;
            in=1;s=3'b000;
            #5;
            in=1;s=3'b000;
            #5;
            in=1;s=3'b000;
            #5;
            in=1;s=3'b000;
            #5;
            in=1;s=3'b000;
            #5;
            in=1;s=3'b000;
            #5;
            in=0;s=3'b000;
            #5;
            $finish;
            
        end
endmodule
