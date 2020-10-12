// A minimal hello world verilog design simulated with Icarus Verilog.

module hello_icarus;
    initial begin
        $display("Hello, world!");
        $finish;
    end 
endmodule
