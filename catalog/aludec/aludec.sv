//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: YOUR NAMES
// 
//     Create Date: 2023-02-07
//     Module Name: aludec
//     Description: 32-bit RISC ALU decoder
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef ALUDEC
`define ALUDEC

`timescale 1ns/100ps

module aludec
    #(parameter n = 32, r = 6)(
    //
    // ---------------- PORT DEFINITIONS ----------------
    //
    input logic [(r-1):0] = funct,
    input [1:0] aluop,
    output reg [2:0] alucontrol
    );
    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //
    always@(*) begin
        case(aluop)
            2'b00: alucontrol <= 3'b010;
            2'b01: alucontrol <= 3'b110;
            default: case(funct)
                6'b100000: alucontrol <= 3'b010; //add
                6'b100000: alucontrol <= 3'b110; //sub
                6'b100000: alucontrol <= 3'b010; //and
                6'b100000: alucontrol <= 3'b010; //or
                6'b100000: alucontrol <= 3'b010; //slt
                default:   alucontrol <= 3'bxxx; //Illegal function
            endcase
        endcase
    end
endmodule

`endif // ALUDEC