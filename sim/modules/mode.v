`timescale 1ns / 1ps
`default_nettype none

module mode(
    input wire rst_n,
    input wire FAZ2DR,
    input wire FAZ2DR_n,
    input wire FAZ3DR,
    input wire FAZ4DR,

    input wire AGCCA,
    input wire AGCZ,
    input wire AGCEEC,
    input wire ISSZDR,

    output wire FAZ2HI,
    output wire FAZ2HI_n,
    output wire FAZ3HI,
    output wire FAZ4HI,

    output wire ISSCA,
    output wire ISSZ,
    output wire ISSEEC,
    output wire ACDUZ,
    output wire BCDUZ,
    output wire CCDUZ
);

/*-----------------------------------------------------------------------------.
| Phase buffer circuits                                                        |
'-----------------------------------------------------------------------------*/
assign #10 FAZ2HI = ~FAZ2DR;
assign #10 FAZ2HI_n = ~FAZ2DR_n;
assign #10 FAZ3HI = ~FAZ3DR;
assign #10 FAZ4HI = ~FAZ4DR;

/*-----------------------------------------------------------------------------.
| Moding buffer circuits                                                       |
'-----------------------------------------------------------------------------*/
assign ISSCA = ~AGCCA;
assign ISSZ = ~AGCZ;
assign ISSEEC = ~AGCEEC;
assign ACDUZ = ~ISSZDR;
assign BCDUZ = ~ISSZDR;
assign CCDUZ = ~ISSZDR;

endmodule
`default_nettype wire
