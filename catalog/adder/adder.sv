//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: YOUR NAMES
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
    input bit EN, RST, CLOCK;
    input [(n-1):0] A, B;

    output reg [(n-1):0] OUT;
    output reg C_OUT;
);
   //
   // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
   //
   always @ (a or b or c or posedge clk or negedge rst or posedge en) begin
        if(rst)
            c = 0;
        else if (en)
            {carry_out, c} = a + b;
   end

endmodule

`endif // ADDER