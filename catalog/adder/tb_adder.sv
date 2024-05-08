//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: YOUR NAMES
// 
//     Create Date: 2023-02-07
//     Module Name: tb_adder
//     Description: Test bench for simple behavorial adder
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef TB_ADDER
`define TB_ADDER

`timescale 1ns/100ps
`include "adder.sv"

module tb_adder;
    parameter n = 32;
    logic bit en, rst, c_out, clock;
    logic [(n-1):0] a, b, out;

   initial begin
        $dumpfile("tb_adder.vcd");
        $dumpvars(0, uut);
        $monitor("a = 0x%0h b = 0x%0h out = 0x%0h", a, b, out);
    end

    initial begin
        a <= #n'h01B30FFF;
        b <= #n'hFFA5FFFF;
        en <= 1;
        rst <= 0;

    end

    adder uut(
        .EN(en) .RST(rst) .CLOCK(clock) .A(a), .B(b), .OUT(out) .C_OUT(c_out)
    );
endmodule
`endif // TB_ADDER