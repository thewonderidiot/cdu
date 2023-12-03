`timescale 1ns / 1ps
`default_nettype none

module quadrant_selector(
    input wire clk,
    input wire rst_n,
    input wire real _FSINH,
    input wire real _FCOSH,

    input wire _D1,
    input wire _D2,
    input wire _D3,
    input wire _D4,
    input wire _D5,
    input wire _D6,
    input wire _D7,
    input wire _D8,
    input wire _D9,
    input wire _D10,
    input wire _D11,
    input wire _D12,
    input wire _D13,
    input wire _D14,

    output wire real _S1SIN,
    output wire real _S2SIN,
    output wire real _S3SIN,
    output wire real _S4SIN,

    output wire real _S1COS,
    output wire real _S2COS,
    output wire real _S3COS,
    output wire real _S4COS,

    output wire real _S10,
    output wire real _S13,

    output wire real _1125A,
    output wire real _BIASA,
    output wire real _1125B,
    output wire real _BIASB
);

/*-----------------------------------------------------------------------------.
| Sine Quadrant Selector                                                       |
'-----------------------------------------------------------------------------*/
wire real a1;
assign a1 = (_D5) ? _FSINH : -_FSINH;

/*-----------------------------------------------------------------------------.
| Cosine Quadrant Selector                                                     |
'-----------------------------------------------------------------------------*/
wire real a3;
assign a3 = (_D7) ? _FCOSH : -_FCOSH;

/*-----------------------------------------------------------------------------.
| MSA Switch Selection                                                         |
'-----------------------------------------------------------------------------*/
assign _S1SIN = _D1 ? 0.0 : a1;
assign _S2SIN = _D2 ? 0.0 : a1;
assign _S3SIN = _D3 ? 0.0 : a1;
assign _S4SIN = _D4 ? 0.0 : a1;

assign _S1COS = _D1 ? 0.0 : a3;
assign _S2COS = _D2 ? 0.0 : a3;
assign _S3COS = _D3 ? 0.0 : a3;
assign _S4COS = _D4 ? 0.0 : a3;

/*-----------------------------------------------------------------------------.
| Cos(theta-phi) Generator                                                     |
'-----------------------------------------------------------------------------*/
wire real s1s;
wire real s2s;
wire real s3s;
wire real s4s;

wire real s1c;
wire real s2c;
wire real s3c;
wire real s4c;

wire real s11;
wire real s14;

wire real a5;
wire real a6;

assign s1s = _S1SIN * (25e3 / 128.146e3);
assign s2s = _S2SIN * (25e3 / 44.999e3);
assign s3s = _S3SIN * (25e3 / 30.067e3);
assign s4s = _S4SIN * (25e3 / 25.490e3);

assign s1c = _S1COS * (25e3 / 25.490e3);
assign s2c = _S2COS * (25e3 / 30.067e3);
assign s3c = _S3COS * (25e3 / 44.999e3);
assign s4c = _S4COS * (25e3 / 128.146e3);

assign a5 = -(s1s + s2s + s3s + s4s + s14);
assign a6 = -(s1c + s2c + s3c + s4c + s11);

`ifdef TARGET_WEB
real s11r;
real s14r;
always @(posedge clk) begin
    s11r <= _D11 ? 0.0 : a5;
    s14r <= ~_D11 ? 0.0 : a6; // Actually controlled by _D14
end
assign s11 = s11r;
assign s14 = s14r;
`else
assign s11 = _D11 ? 0.0 : a5;
assign s14 = ~_D11 ? 0.0 : a6; // Actually controlled by _D14
`endif

assign _1125A = _D9  ? 0.0 : a5;
assign _S10   = _D10 ? 0.0 : a5;
assign _BIASA = _S10 * (51/(10e3 + 51));

assign _1125B = _D12 ? 0.0 : a6;
assign _S13   = _D13 ? 0.0 : a6;
assign _BIASB = _S13 * (51/(10e3 + 51));

endmodule
`default_nettype wire

