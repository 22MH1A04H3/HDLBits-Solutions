module top_module (
    input clk,
    input enable,
    input reg S,
    input A,B,C,
    output Z); 
    reg [7:0]q;
    assign Z=(A?(B?(C?q[7]:q[6]):(C? q[5]:q[4])):(B?(C?q[3]:q[2]):(C? q[1]:q[0])));
    always@(posedge clk)
        begin
            if(enable)
                q<={q[6:0],S};
                     
        end

endmodule
