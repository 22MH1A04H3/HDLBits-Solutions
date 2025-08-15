module top_module (
	input [2:0] SW,      // R
    input [1:0] KEY,     // L=key[1] and clk=key[0]
	output [2:0] LEDR);  // Q
    reg [2:0]t;
    always@(posedge KEY[0])
        begin
            if(KEY[1])
              t<=SW;
            else
                t<={(t[1]^t[2]),t[0],t[2]};
        end
    assign LEDR=t;
endmodule
