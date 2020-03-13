`timescale 1ns / 1ps
`default_nettype none

module nor3(
    input wire rst_n,
    input wire a,
    input wire b,
    input wire c,
    output wire y
);
parameter iv = 1'b0;

//pullup r1(y);
assign #20 y = (rst_n) ? ~(a | b | c) : iv;

endmodule
`default_nettype wire
