//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Isaac Moore, Morris Madeb
// 
//     Create Date: 2023-02-07
//     Module Name: adder
//     Description: simple behavorial adder
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef ADDER
`define ADDER

`timescale 1ns/100ps

module adder
    #(parameter n = 32)(
        //
        // ---------------- PORT DEFINITIONS ----------------
        //
        input [(n-1):0] a, b;
        output reg [(n-1):0] c;
    );
   //
   // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
   //
   assign c = a + b;

endmodule

`endif // ADDER