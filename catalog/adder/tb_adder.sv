//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Isaac Moore, Morris Madeb
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
    logic [(n-1):0] a, b, out;

   initial begin
        $dumpfile("tb_adder.vcd");
        $dumpvars(0, uut);
        $monitor("a = 0x%0h b = 0x%0h out = 0x%0h", a, b, out);
    end

    initial begin
        a <= #n'h01B30FFF;
        b <= #n'hFFA5FFFF;
        #10
        a <= #n'987654321;
        b <= #n'123456789;
        #10
        a <= #n'h01000001;
        b <= #n'101010101;
        $finish;
    end

    adder uut(
        .a(a), .b(b), .c(out)
    );
endmodule
`endif // TB_ADDER