`timescale 1ns / 1ps
`default_nettype none

module da_converter(
    input wire rst_n,

    input wire ApPGH,
    input wire AmPGH,

    output wire ATpPGH,
    output wire ATmPGH
);

/*-----------------------------------------------------------------------------.
| Transformer-coupled I/O                                                      |
'-----------------------------------------------------------------------------*/
assign ATpPGH = ApPGH;
assign ATmPGH = AmPGH;

endmodule
`default_nettype wire

