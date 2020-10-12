// A minimal hello world verilog design simulated with Icarus Verilog.

module hello_icarus;
    mod2 m();
    initial begin
        $display("Hello, world!");
        $finish;
    end 
endmodule
