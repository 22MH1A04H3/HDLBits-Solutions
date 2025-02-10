module top_module (

input clk,

input reset,

output [3:0] q);

always@(posedge clk)

if (reset)

q=4'b0001;

else if(q[1]&(!q[0])&(!q[2])&q[3]==1)

q=4'b0001;

else

q=q+1;

endmodule
