module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    
    /*
    Connect the R inputs to the SW switches,
clk to KEY[0],
E to KEY[1],
L to KEY[2],
w to KEY[3].
*/
    
    always@(posedge KEY[0])
        begin
            LEDR <=KEY[2]?SW:(KEY[1]?{KEY[3],LEDR[3:1]}:LEDR);
        end
    
endmodule


