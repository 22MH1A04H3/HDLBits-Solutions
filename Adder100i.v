module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    assign{cout[0],sum[0]}=a[0]+b[0]+cin;
    genvar i;
    generate
        begin
            for(i=1;i<=99;i++)
                begin:gen
                    full_adder fa(.sum(sum[i]),.cout(cout[i]),.cin(cout[i-1]),.a(a[i]),.b(b[i]));
                end:gen
        end
    endgenerate   

endmodule
module full_adder(output sum,cout,input a,b ,cin);
    assign{cout,sum}=a+b+cin;
    
endmodule
