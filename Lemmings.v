module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right); //  
    typedef enum reg{l=1'b0,r=1'b1}state_t;
    // parameter LEFT=0, RIGHT=1, ...
    state_t current_state, next_state;

    always @(*) 
        begin
            case(current_state)
                l:next_state=bump_left?r:l;
                r:next_state=bump_right?l:r;
                default:next_state=l;
                
            endcase
        // State transition logic
        
    end

    always @(posedge clk, posedge areset)
        begin
            if(areset)
                current_state<=l;
            else
                current_state<=next_state;
        // State flip-flops with asynchronous reset
        end

    // Output logic
    assign walk_left = (current_state ==l);
    assign walk_right = (current_state ==r);

endmodule
