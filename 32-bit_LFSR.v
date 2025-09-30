module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 32'h1
    output reg[31:0] q
); 
   // reg [31:0]t;
    always@(posedge clk)
        begin
            if(reset)
                q<=31'h1;
            else
         
                q<={q[0],q[31:23],q[22]^q[0],q[21:3],(q[2]^q[0]),q[0]^q[1]};
        end
  
endmodule
