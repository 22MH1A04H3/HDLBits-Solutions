// Note the Verilog-1995 module declaration syntax here:
module top_module (clk, reset, in, out);





input clk;

input reset;

// Synchronous reset to state B

output out://

input in;

reg out;

// Fill in state name declarations

typedef enum logic{A=1'60, B=1'b1}state_t;

state_t current_state, next_state;

always (posedge clk)

begin

if (reset)

current_state<=B;

current_state<=next_state;

else

B

end

always@(*)

begin

B

case(current_state)

B:next_state=in?B:A;

A:next_state=in?A:B;

default:next_state=B;

endcase

end

always@(*)

begin

case(current_state)

A:out=1'b0;

B:out=1'b1;

default:out=1'b0;

endcase



end



   endmodule
