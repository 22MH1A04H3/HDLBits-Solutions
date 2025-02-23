module top_module(

input clk,

input reset,

input j.

// Synchronous reset to OFF

input k,

output out); //

parameter s0=0, s1=1;

reg current_state, next_state;

always (*) begin

case(current_state)

so:next_state=j?s1:s0;

s1:next_state=k?s0:s1;

default:next_state=s0;

endcase

// State transition logic

end

always (posedge clk)

begin

if (reset)

current_state<=1b0;

else

current_state<=next_state;

// State flip-flops with synchronous reset

end

always@(*)

begin

case(current_state)

s1:out=1'b1;

default:out=1'b0;

endcase

end

// Output logic

// assign out (state = ...);

endmodule
