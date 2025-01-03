module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire w;
    assign out=w^in3;
    assign w=~(in1^in2);

endmodule
