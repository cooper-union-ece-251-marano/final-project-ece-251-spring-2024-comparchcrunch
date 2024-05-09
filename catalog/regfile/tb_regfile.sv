//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Isaac Moore, Morris Madeb
// 
//     Create Date: 2023-02-07
//     Module Name: tb_regfile
//     Description: Test bench for simple behavorial register file
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef TB_REGFILE
`define TB_REGFILE

`timescale 1ns/100ps
`include "regfile.sv"

module tb_regfile;
    parameter n = 32;
    parameter r = 5;
    logic clk, 
    logic we3, 
    logic [(r-1):0] ra1, ra2, wa3;
    logic [(n-1):0] wd3, rd1, rd2;

    initial begin
        $dumpfile("tb_regfile.vcd");
        $dumpvars(0, uut);
        $monitor("time=%0t \t a=%b y=%b",$realtime, a, out);
        clk <= 0;
        #10
    end

    initial begin
        //TO DO: regfile tests
        $finish;
    end

    regfile uut(
        .clk(clk), .we3(writeControl), .ra1(ra1), .ra2(ra2), .wa3(wa3), .wd3(wd3), .rd1(rd1), .rd2(rd2)
    );
endmodule
`endif // TB_REGFILE