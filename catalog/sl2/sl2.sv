//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Isaac Moore, Morris Madeb
// 
//     Create Date: 2023-02-07
//     Module Name: sl2
//     Description: shift left by 2 (multiply by 4)
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef SL2
`define SL2

`timescale 1ns/100ps

module sl2 #(parameter n = 32)(
    //
    // ---------------- PORT DEFINITIONS ----------------
    //
    input  logic [(n-1):0] a,
    output logic [(n-1):0] out
);
    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //
    assign out = {a[(n-3):0], 2'b00};
endmodule

`endif // SL2
