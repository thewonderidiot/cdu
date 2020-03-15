`timescale 1ns / 1ps
`default_nettype none

module quadrant_selector(
    input wire rst_n,
    input wire real _FSINH,
    input wire real _FCOSH,

    input wire _D5,
    input wire _D6,
    input wire _D7,
    input wire _D8
);

/*-----------------------------------------------------------------------------.
| Sine Quadrant Selector                                                       |
'-----------------------------------------------------------------------------*/
wire real sin_inv;
assign sin_inv = (~_D5) ? _FSINH : -_FSINH;

/*-----------------------------------------------------------------------------.
| Cosine Quadrant Selector                                                     |
'-----------------------------------------------------------------------------*/
wire real cos_inv;
assign cos_inv = (~_D7) ? _FCOSH : -_FCOSH;

endmodule
`default_nettype wire

