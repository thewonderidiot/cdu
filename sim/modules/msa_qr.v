`timescale 1ns / 1ps
`default_nettype none

module msa_qr(
    input wire rst_n,

    input wire _D15,
    input wire _D16,
    input wire _D17,
    input wire _D18,
    input wire _D19,
    input wire _D20,
    input wire _D21,

    input wire real _S1SIN,
    input wire real _S2SIN,
    input wire real _S3SIN,
    input wire real _S4SIN,

    input wire real _S1COS,
    input wire real _S2COS,
    input wire real _S3COS,
    input wire real _S4COS,

    input wire real _S10,
    input wire real _S13,

    input wire real _1125A,
    input wire real _BIASA,
    input wire real _1125B,
    input wire real _BIASB,

    output wire _TLF2H,
    output wire _TLF1H,

    output wire real _MTPA
);

/*-----------------------------------------------------------------------------.
| Ladder Amplifier                                                             |
'-----------------------------------------------------------------------------*/
wire real a1;
assign a1 = -(_1125A + _1125B + _S10 + _S13) * (25e3/25.708e3);

/*-----------------------------------------------------------------------------.
| Main Summing Amplifier                                                       |
'-----------------------------------------------------------------------------*/
wire real s1s;
wire real s2s;
wire real s3s;
wire real s4s;
wire real s1c;
wire real s2c;
wire real s3c;
wire real s4c;

wire real s9_1125;
wire real s12_1125;
wire real s10_dk;
wire real s13_dk;

wire real s15;
wire real s16;
wire real s17;
wire real s18;
wire real s19;
wire real s20;
wire real s21;

// Attenuations
assign s1c = _S1COS * (25e3 / 128.146e3);
assign s2c = _S2COS * (25e3 / 44.999e3);
assign s3c = _S3COS * (25e3 / 30.067e3);
assign s4c = _S4COS * (25e3 / 25.490e3);

assign s1s = _S1SIN * (25e3 / 25.490e3);
assign s2s = _S2SIN * (25e3 / 30.067e3);
assign s3s = _S3SIN * (25e3 / 44.999e3);
assign s4s = _S4SIN * (25e3 / 128.146e3);

assign s9_1125  = _1125A * (25e3 / 125.500e3);
assign s12_1125 = _1125B * (25e3 / 125.500e3);

assign s10_dk = _BIASA * (25e3 / 240e3);
assign s13_dk = _BIASB * (25e3 / 240e3);

assign s15 = _D15 ? 0.0 : a1 * (25e3 / 100e3) * (2.6027e3 / (2.6027e3 + 4000));
assign s16 = _D16 ? 0.0 : a1 * (25e3 / 100e3) * (1.9638e3 / (1.9638e3 + 8000));
assign s17 = _D17 ? 0.0 : a1 * (25e3 / 100e3) * (866.9 / (866.9 + 8000));
assign s18 = _D18 ? 0.0 : a1 * (25e3 / 100e3) * (409.5 / (409.5 + 8000));
assign s19 = _D19 ? 0.0 : a1 * (25e3 / 100e3) * (399.3 / (399.3 + 16e3));
assign s20 = _D20 ? 0.0 : a1 * (25e3 / 100e3) * (196.8 / (196.8 + 16e3));
assign s21 = _D21 ? 0.0 : a1 * (25e3 / 100e3) * (97.70 / (97.70 + 16e3));

// Amplifier
wire real a2;
assign a2 = -(s1c + s2c + s3c + s4c + s1s + s2s + s3s + s4s + s9_1125 + s12_1125 +
              s10_dk + s13_dk + s15 + s16 + s17 + s18 + s19 + s20 + s21);

/*-----------------------------------------------------------------------------.
| Error Amplifier                                                              |
'-----------------------------------------------------------------------------*/
wire real fine_error;
wire real amplified_error;
assign amplified_error = a2 * 3;
assign fine_error = (amplified_error > 2.0) ? 2.0 :
                    (amplified_error < -2.0) ? -2.0 :
                    amplified_error;

assign _MTPA = fine_error;

/*-----------------------------------------------------------------------------.
| Schmitt Triggers                                                             |
'-----------------------------------------------------------------------------*/
assign _TLF2H = (fine_error > 1.2*$sqrt(2));
assign _TLF1H = (fine_error > 0.07*$sqrt(2));

endmodule
`default_nettype wire
