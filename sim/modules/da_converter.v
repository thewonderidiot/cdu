`timescale 1ns / 1ps
`default_nettype none

module da_converter(
    input wire rst_n,

    input wire real _28RFH,

    input wire _FpPCH,
    input wire _FmPCH,
    output wire _pPCH,
    output wire _mPCH,

    input wire _pPGH,
    input wire _mPGH,
    output wire _TpPGH,
    output wire _TmPGH,

    input wire _DD0,
    input wire _DD1,
    input wire _DD2,
    input wire _DD3,
    input wire _DD4,
    input wire _DD5,
    input wire _DD6,
    input wire _DD7,
    input wire _DD8,

    output wire real _DACH,
    output wire real _CAEHI
);

/*-----------------------------------------------------------------------------.
| Transformer-coupled I/O                                                      |
'-----------------------------------------------------------------------------*/
assign _pPCH = _FpPCH;
assign _mPCH = _FmPCH;

assign _TpPGH = _pPGH;
assign _TmPGH = _mPGH;

wire [8:0] error_count;
assign error_count = ~{_DD8, _DD7, _DD6, _DD5, _DD4, _DD3, _DD2, _DD1, _DD0};

// Demodulator
assign _DACH = error_count * 0.01318359375;

// Ladder amp
assign _CAEHI = (_DACH / 28) * _28RFH;

endmodule
`default_nettype wire

