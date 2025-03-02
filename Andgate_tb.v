module top_module();
    reg [1:0]in;
    wire out;
    andgate uut(.in(in),.out(out));
    initial 
        begin
            in[1]=1'b0;in[0]=1'b0;
            #10;
            in[1]=1'b0;in[0]=1'b1;
            #10;
            in[1]=1'b1;in[0]=1'b0;
            #10;
            in[1]=1'b1;in[0]=1'b1;
            #10;
            
            
        end
endmodule
