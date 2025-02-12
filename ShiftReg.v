module top_module(

input clk,

Load

input areset, // async active-high reset to zero

input load,

input ena,

input [3:0] data,

output reg [3:0] q):

always (posedge clk or posedge areset)

begin

if(areset)

q <= 4' * b*theta*theta*theta*theta

else if (load)

q<=data;

else if(ena)

q <= \{1' * b*theta, q[3/1]\} ;

/*begin

if(load)

Q = 0 data:

if(ena)

begin

q[3] = 0

q[2] = q[3]

q[1] = q[2]

q[0] = q[1]

end*/

end

endmodule
