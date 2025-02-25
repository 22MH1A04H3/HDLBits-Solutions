module top_module(
    input clk,
    input in,
    input areset,
    output out); //
    typedef enum logic[1:0]{a,b,c,d}state_t;
    state_t current_state,next_state;
    
    // State transition logic
    always@(*)
        begin
            case(current_state)
                a:next_state=in?b:a;
                b:next_state=in?b:c;
                c:next_state=in?d:a;
                d:next_state=in?b:c;
                default:next_state=a;
              
            endcase
        end
    // State flip-flops with asynchronous reset
    always@(posedge clk or posedge areset)
        begin
            if(areset)
                current_state<=a;
            else
                current_state<=next_state;
        end
   
    // Output logic
    always@(*)
        begin
            case(current_state)
                a:out=1'b0;
                b:out=1'b0;
                c:out=1'b0;
                d:out=1'b1;
                default:out=1'b0;
            endcase
        end

endmodule
