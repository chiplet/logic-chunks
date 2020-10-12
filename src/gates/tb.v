// testbench for simple logic gate impementations
module tb;

    // and gate
    reg and_a;
    reg and_b;
    wire and_out;
    and_gate and1(and_a, and_b, and_out);

    // or gate
    reg or_a;
    reg or_b;
    wire or_out;
    or_gate or1(or_a, or_b, or_out);

    initial begin
        /********************************************************************************/
        $display("and_gate");
        and_a <= 1'b0;
        and_b <= 1'b0;
        #1;
        if (and_out != 1'b0)
            $display("  test failed for input {a, b} = {%1b, %1b}", and_a, and_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", and_a, and_b);

        and_a <= 1'b1;
        and_b <= 1'b0;
        #1;
        if (and_out != 1'b0)
            $display("  test failed for input {a, b} = {%1b, %1b}", and_a, and_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", and_a, and_b);

        and_a <= 1'b0;
        and_b <= 1'b1;
        #1;
        if (and_out != 1'b0)
            $display("  test failed for input {a, b} = {%1b, %1b}", and_a, and_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", and_a, and_b);

        and_a <= 1'b1;
        and_b <= 1'b1;
        #1;
        if (and_out != 1'b1)
            $display("  test failed for input {a, b} = {%1b, %1b}", and_a, and_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", and_a, and_b);


        /********************************************************************************/
        $display("or_gate");
        or_a <= 1'b0;
        or_b <= 1'b0;
        #1;
        if (or_out != 1'b0)
            $display("  test failed for input {a, b} = {%1b, %1b}", or_a, or_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", or_a, or_b);

        or_a <= 1'b1;
        or_b <= 1'b0;
        #1;
        if (or_out != 1'b1)
            $display("  test failed for input {a, b} = {%1b, %1b}", or_a, or_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", or_a, or_b);

        or_a <= 1'b0;
        or_b <= 1'b1;
        #1
        if (or_out != 1'b1)
            $display("  test failed for input {a, b} = {%1b, %1b}", or_a, or_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", or_a, or_b);

        or_a <= 1'b1;
        or_b <= 1'b1;
        #1;
        if (or_out != 1'b1)
            $display("  test failed for input {a, b} = {%1b, %1b}", or_a, or_b);
        else
            $display("  OK for input {a, b} = {%1b, %1b}", or_a, or_b);

        $finish;
    end


endmodule
