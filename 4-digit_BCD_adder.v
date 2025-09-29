module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire w1,w2,w3;
    wire [3:0]con1;
    
    /*
    BCD adder which add the values if the sum is greater than 9 then 
    sum added to 6(0110) the result is the actual result 
    
    fa dut1(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(w1));
    fa dut2(.a(a[7:4]),.b(b[7:4]),.cin(w1),.sum(sum[7:4]),.cout(w2));
    fa dut3(.a(a[11:8]),.b(b[11:8]),.cin(w2),.sum(sum[11:8]),.cout(w3));
    fa dut4(.a(a[15:12]),.b(b[15:12]),.cin(w3),.sum(sum[15:12]),.cout(cout));
    */
    
    bcd_fadd B_add1(a[3:0],b[3:0],cin,con1[0],sum[3:0]);
    bcd_fadd B_add2(a[7:4],b[7:4],con1[0],con1[1],sum[7:4]);
    bcd_fadd B_add3(a[11:8],b[11:8],con1[1],con1[2],sum[11:8]);
    bcd_fadd B_add4(a[15:12],b[15:12],con1[2],cout,sum[15:12]);
endmodule
/*
module fa(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output cout);
    assign {cout,sum}=a+b+cin;
    
endmodule
*/
