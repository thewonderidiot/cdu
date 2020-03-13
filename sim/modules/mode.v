`timescale 1ns / 1ps
`default_nettype none

module mode(
    input wire rst_n,
    input wire FAZ2DR,
    input wire FAZ2DR_n,
    input wire FAZ3DR,
    input wire FAZ4DR,

    output wire FAZ2HI,
    output wire FAZ2HI_n,
    output wire FAZ3HI,
    output wire FAZ4HI
);

/*-----------------------------------------------------------------------------.
| Phase buffer circuits                                                        |
'-----------------------------------------------------------------------------*/
assign #10 FAZ2HI = ~FAZ2DR;
assign #10 FAZ2HI_n = ~FAZ2DR_n;
assign #10 FAZ3HI = ~FAZ3DR;
assign #10 FAZ4HI = ~FAZ4DR;

endmodule
`default_nettype wire
