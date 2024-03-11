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
    input wire AGCDAE,
    input wire AGCRRZ,
    input wire AGCTVC,

    input wire ISSZDR,
    input wire RRZDR,

    output wire FAZ2HI,
    output wire FAZ2HI_n,
    output wire FAZ3HI,
    output wire FAZ4HI,

    output wire ISSCA,
    output wire ISSZ,
    output wire ISSEEC,
    output wire RRDAE,
    output wire RRZ,
    output wire TVCDCA,

    output wire ACDUZ,
    output wire BCDUZ,
    output wire CCDUZ,
    output wire DCDUZ,
    output wire ECDUZ
);

/*-----------------------------------------------------------------------------.
| Phase buffer circuits                                                        |
'-----------------------------------------------------------------------------*/
`ifdef TARGET_WEB
`define PHASE_DELAY
`else
`define PHASE_DELAY #10
`endif
assign `PHASE_DELAY FAZ2HI = ~FAZ2DR;
assign `PHASE_DELAY FAZ2HI_n = ~FAZ2DR_n;
assign `PHASE_DELAY FAZ3HI = ~FAZ3DR;
assign `PHASE_DELAY FAZ4HI = ~FAZ4DR;

/*-----------------------------------------------------------------------------.
| Moding buffer circuits                                                       |
'-----------------------------------------------------------------------------*/
assign ISSCA = ~AGCCA;
assign ISSZ = ~AGCZ;
assign ISSEEC = ~AGCEEC;
assign RRDAE = ~AGCDAE;
assign RRZ = ~AGCRRZ;
assign ACDUZ = ~ISSZDR;
assign BCDUZ = ~ISSZDR;
assign CCDUZ = ~ISSZDR;
assign DCDUZ = ~RRZDR;
assign ECDUZ = ~RRZDR;
assign TVCDCA = ~AGCTVC;

endmodule
`default_nettype wire
