module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    assign s = a+b;
    /*Genarally Overflow happens in two cases
    case 1 : when two negative values are added the result is possitive 
    case 2 : when two possitive value are added the result is negative
    */
    assign overflow = (a[7]&b[7]&(~s[7]))|((~a[7])&(~b[7])&s[7]);

endmodule
