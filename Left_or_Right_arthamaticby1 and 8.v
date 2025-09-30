module top_module(
    input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q); 

/*
2'b00: shift left by 1 bit.
2'b01: shift left by 8 bits.
2'b10: shift right by 1 bit.
2'b11: shift right by 8 bits.
    */
    
    always@(posedge clk)
        begin
            if(load)
                q<=data;
            else if(~ena)
                q<=q;
            else 
                begin
                    case(amount)
                        2'b00:q<= q<<1;//left shift by 1 bit 
                        2'b01:q<= q<<8;//left shift by 8 bit
                        
                        2'b10:q<={q[63],q[63:1]};//right shift and msb is retaining
                        2'b11:q<={{8{q[63]}},q[63:8]};//right shift by 8 and rataing msb 8 times
                        default:q<=q;
                        
                    endcase
                end
        end
endmodule
