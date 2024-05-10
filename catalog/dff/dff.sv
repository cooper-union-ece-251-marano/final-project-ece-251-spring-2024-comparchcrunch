//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Prof Rob Marano
// 
//     Create Date: 2023-02-07
//     Module Name: dff
//     Description: 32 bit D flip flop
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef DFF
`define DFF

`timescale 1ns/100ps

module dff
    #(parameter n = 32)(
    //
    // ---------------- PORT DEFINITIONS ----------------
    //
    input  logic clk, rst,
    input  logic [(n-1):0] d,
    output logic [(n-1):0] q
);
    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //
    always @(posedge clk, posedge rst)
    begin
        if (rst)
        begin
            q <= 0;
        end
        else
        begin
            q <= d;
        end
    end
endmodule

`endif // DFF