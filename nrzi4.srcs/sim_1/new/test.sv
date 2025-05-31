`timescale 1ns/1ps

module nrz4_tb;

    logic [3:0] D_i;
    logic       mod;
    logic [3:0] D_o;

    nrz4 dut (
        .D_i(D_i),
        .mod(mod),
        .D_o(D_o)
    );

    task print_state(input string msg);
        $display("%s | mod = %0b | D_i = %b | D_o = %b", msg, mod, D_i, D_o);
    endtask

    initial begin
        $display("==== Test NRZ-I Encoder ====");
        mod = 0;

        D_i = 4'b0000; #1; print_state("Input 0000");
        D_i = 4'b0001; #1; print_state("Input 0001");
        D_i = 4'b0011; #1; print_state("Input 0011");
        D_i = 4'b1111; #1; print_state("Input 1111");
        D_i = 4'b1010; #1; print_state("Input 1010");

        $display("==== Test NRZ-I Decoder ====");
        mod = 1;

        D_i = 4'b0000; #1; print_state("Input 0000");
        D_i = 4'b0001; #1; print_state("Input 0001");
        D_i = 4'b0101; #1; print_state("Input 0101");
        D_i = 4'b1111; #1; print_state("Input 1111");
        D_i = 4'b1010; #1; print_state("Input 1010");

        $finish;
    end

endmodule