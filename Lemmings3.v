module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging
); 
    typedef enum logic [2:0] {l = 3'b000, r = 3'b001, f_l = 3'b010, f_r = 3'b011,d_l=3'b100,d_r=3'b101} state_t;
    
    state_t current_state, next_state;

    always @(posedge clk or posedge areset) begin
        if (areset)
            current_state <= l;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            l: begin
                if (~ground)
                    next_state = f_l;
                else if(dig)
                    next_state =d_l;
                else if (bump_left)
                    next_state = r;
                else
                    next_state = l;
            end
            r: begin
                if (~ground)
                    next_state = f_r;
                else if(dig)
                    next_state =d_r;
                else if (bump_right)
                    next_state = l;
                else
                    next_state = r;
            end
            f_l: next_state = ground ? l : f_l;
            f_r: next_state = ground ? r : f_r;
            d_l: next_state=ground?d_l:f_l;
            d_r: next_state=ground?d_r:f_r;
            default: next_state = l;
        endcase
    end

    assign walk_left = (current_state == l);
    assign walk_right = (current_state == r);
    assign aaah = (current_state == f_l) || (current_state == f_r);  // Fixed this line
    assign digging=(current_state==d_l)||(current_state==d_r);
endmodule
