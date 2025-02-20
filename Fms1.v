module top_module(

input clk.

// Asynchronous reset to state B

end

input areset,

input in,

output reg out);//

parameter A=0, B=1;

reg state, next_state;

always() begin // This is a combinational always block

// State transition logic

case(state)

B:next_state-in ? B:A;

A:next_state-in? A:B;

default:next_state=B;

endcase

always (posedge clk or posedge areset) begin

// This is a sequenti

end

if (areset)

state<=B;

else

state<=next_state;

// Output logic

always@(*)

begin

case(state)

A:out=0:

B:out=1;

default:out=0;

endcase

end

// assign out (state == ...);
endmodule

