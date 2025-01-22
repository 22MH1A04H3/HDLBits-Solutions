module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out=(~d)&(~a)|a&(~c)&(~b)|c&d&a|(~a)&(~b)&(~c)|(~a)&b&c;

endmodule

