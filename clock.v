module top_module ( );
reg clk;
    dut d(.clk(clk));
    initial
        begin
            clk=0;
            forever #5 clk=~clk;
        end
endmodule


//  https://hdlbits.01xz.net/wiki/Tb/clock
