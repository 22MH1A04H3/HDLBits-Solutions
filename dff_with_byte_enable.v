module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output reg [15:0] q
);
    
  /*  reg [15:0]t;
    assign t=d;*/
    
    
    
    
  
    always@(posedge clk)
        begin
            if(~resetn)
                q=8'h00;
            else
                begin
                    case({byteena[1],byteena[0]})
                        2'b11:q=d;
                        2'b01:q={q[15:8],d[7:0]};
                        2'b10:q={d[15:8],q[7:0]};
                        
                        
                    endcase
                end
        end

endmodule
