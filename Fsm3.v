
module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    typedef enum logic{s0=1'b0,s1=1'b1}state_t;
    state_t current_state, next_state;

    always @(*) 
        begin
            case(current_state)
                s0:next_state=j?s1:s0;
                 
                   
                s1:next_state=k?s0:s1;
               
                     default:next_state=s0;
                   
     
            endcase
        
        // State transition logic
    end

    always @(posedge clk or posedge areset)
        begin
            if(areset)
                current_state<=s0;
            else
                current_state<=next_state;
      
 // State flip-flops with asynchronous reset
    end
    always@(*)
        begin
            case(current_state)
                s1:out=1'b1;
                default:out=1'b0;
            endcase
        end
    // Output logic
    //assign out = (s1 == 1'b1 );

endmodule
