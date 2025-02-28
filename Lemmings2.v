module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    typedef enum logic[1:0]{l=2'b00,r=2'b01,f_l=2'b10,f_r=2'b11}state_t;
    state_t current_state,next_state;
    always@(posedge clk or posedge areset)
        begin
            if(areset)
                current_state<=l;
            else
                current_state<=next_state;
        end
    always@(*)
        begin
            case(current_state)
                l:begin
                if(~ground)
                        next_state=f_l;
           
                else if(bump_left)
                    next_state=r;
                else
                    next_state=l;
                end
                r:begin
                    if(~ground)
                        next_state=f_r;
                    else if(bump_right)
                        next_state=l;
                    else
                        next_state=r;
                    
                end
                f_l:next_state=ground?l:f_l;
                f_r:next_state=ground?r:f_r;
                default:next_state=l;
            endcase
                    
                    
        end
    assign walk_left=(current_state==l);
    assign walk_right=(current_state==r);
    assign aaah=(current_state==f_l)||(current_state==f_r);

endmodule
