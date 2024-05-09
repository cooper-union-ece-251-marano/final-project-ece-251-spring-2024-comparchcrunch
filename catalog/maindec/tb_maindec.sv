//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Isaac Moore, Morris Madeb
// 
//     Create Date: 2023-02-07
//     Module Name: tb_maindec
//     Description: Test bench for simple behavorial main decoder
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef TB_MAINDEC
`define TB_MAINDEC

`timescale 1ns/100ps
`include "maindec.sv"

module tb_maindec;
    parameter n = 32;
    input  logic [5:0] op;
    output logic memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump;
    output logic [1:0] aluop;

    initial begin
        $dumpfile("tb_maindec.vcd");
        $dumpvars(0, uut);
        $monitor("time=%0t \t op=%b controls=%b", $realtime, op, {regwrite, regdst, alusrc, branch, memwrite,memtoreg, jump, aluop});
        #10
    end

    initial begin
        //TO DO: op code testing, should be straightforward
        $finish;
    end
    
    maindec uut(
        .op(op), .memtoreg(memtoreg), .memwrite(memwrite), .branch(branch), .alusrc(alusrc), .regdst(regdst), .regwrite(regwrite), .jump(jump), .aluop(aluop)
    );
endmodule
`endif // TB_MAINDEC