//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Isaac Moore, Morris Madeb
// 
//     Create Date: 2023-02-07
//     Module Name: alu
//     Description: 32-bit RISC-based CPU alu (MIPS)
//
// Revision: 1.0
// see https://github.com/Caskman/MIPS-Processor-in-Verilog/blob/master/ALU32Bit.v
//////////////////////////////////////////////////////////////////////////////////
`ifndef ALU
`define ALU

`timescale 1ns/100ps

module alu
    #(parameter n = 32)(
    //
    // ---------------- PORT DEFINITIONS ----------------
    //
    input logic clk,
    input logic [2:0] alucontrol,
    input logic [(n-1):0] a, b,
    output logic [(n-1):0] out,
    output logic zero
);
    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //
    logic [(2*n-1):0] HILO;
    
    assign zero = (result == {n{1'b0}});
    
    initial begin 
        HILO = {(2*n){1'b0}};
    end

    always@(alucontrol,a,b) begin
        case(alucontrol)
            3'b000: result = a & b; //and
            3'b001: result = a | b; //or
            3'b010: result = ~(a | b); //nor
            3'b011: result = a + b; //add
            3'b100: result = a - b; //sub
            3'b101: result = HILO[(2*n-1):n]; //mfhi
            3'b110: result = HILO[(n-1):0]; //mflo
            3'b111: result = (a<b)?1:0;
        endcase
    end

    always@(negedge clk) begin
        case(alucontrol)
            3'b101: HILO = a * b;
        endcase
    end

endmodule

`endif // ALU
