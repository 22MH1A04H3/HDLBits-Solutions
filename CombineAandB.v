module top_module (input x, input y, output z);
    wire d1,d2,d3,d4,d5,d6;
    a a1(.x(x),.y(y),.z(d1));
    a a2(.x(x),.y(y),.z(d2));
    b b1(.x(x),.y(y),.z(d3));
    b b2(.x(x),.y(y),.z(d4));
    assign d5=d1|d2;
    assign d6=d3&d4;
    assign z=d5^d6;
    
endmodule
module a (input x, input y, output z);
    assign z=(x^y)&x;

endmodule
module b ( input x, input y, output z );
    assign z=~(x^y);

endmodule

