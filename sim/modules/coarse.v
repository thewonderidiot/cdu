`timescale 1ns / 1ps
`default_nettype none

module coarse(
    input wire rst_n,
    input wire real _CSINH,
    input wire real _CCOSH,
    input wire real _28RFH,

    input wire _DC1,
    input wire _DC2,
    input wire _DC3,
    input wire _DC4,
    input wire _DC5,
    input wire _DC6,
    input wire _DC7,
    input wire _DC8,
    input wire _DC9,
    input wire _DC10,
    input wire _DC11,
    input wire _DC12,

    output wire _TLC1H,
    output wire _ADHI,

    output wire real _TPCA
);

/*-----------------------------------------------------------------------------.
| Input Transformers                                                           |
'-----------------------------------------------------------------------------*/
// wire real sin_4vrms;
// wire real cos_4vrms;
// wire real ref_4vrms;
// assign sin_4vrms = (4.0/26.0) * _CSINH;
// assign cos_4vrms = (4.0/26.0) * _CCOSH;
// assign ref_4vrms = (4.0/28.0) * _28RFH;

/*-----------------------------------------------------------------------------.
| Switches                                                                     |
'-----------------------------------------------------------------------------*/
wire real s1;
wire real s2;
wire real s3;
wire real s4;
wire real s5;
wire real s6;
wire real s7;
wire real s8;
wire real s9;
wire real s10;
wire real s11;
wire real s12;

// Nominal gains taken from PS-2007236
assign s1  = _DC1  ? 0.0 : -0.1410 * _CSINH; // -sin_4vrms * (25e3 /  27.06e3);
assign s2  = _DC2  ? 0.0 : -0.0586 * _CSINH; // -sin_4vrms * (25e3 /  65.33e3);
assign s3  = _DC3  ? 0.0 :  0.1410 * _CSINH; //  sin_4vrms * (25e3 /  27.06e3);
assign s4  = _DC4  ? 0.0 :  0.0586 * _CSINH; //  sin_4vrms * (25e3 /  65.33e3);
assign s5  = _DC5  ? 0.0 : -0.0586 * _CCOSH; // -cos_4vrms * (25e3 /  65.33e3);
assign s6  = _DC6  ? 0.0 : -0.1410 * _CCOSH; // -cos_4vrms * (25e3 /  27.06e3);
assign s7  = _DC7  ? 0.0 :  0.0586 * _CCOSH; //  cos_4vrms * (25e3 /  65.33e3);
assign s8  = _DC8  ? 0.0 :  0.1410 * _CCOSH; //  cos_4vrms * (25e3 /  27.06e3);
assign s9  = _DC9  ? 0.0 :  0.0545 * _28RFH; //  ref_4vrms * (25e3 /  65.33e3);
assign s10 = _DC10 ? 0.0 : -0.0276 * _28RFH; // -ref_4vrms * (25e3 / 128.15e3);
assign s11 = _DC11 ? 0.0 : -0.0141 * _28RFH; // -ref_4vrms * (25e3 / 100e3) * (2.6e3/(4.0e3 + 2.6e3));
assign s12 = _DC12 ? 0.0 : -0.0071 * _28RFH; // -ref_4vrms * (25e3 / 100e3) * (2.0e3/(8.0e3 + 2.0e3));

/*-----------------------------------------------------------------------------.
| Summing amplifier                                                            |
'-----------------------------------------------------------------------------*/
wire real sum;
assign sum = -(s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12);
assign _TPCA = sum;

/*-----------------------------------------------------------------------------.
| Schmitt Trigger                                                              |
'-----------------------------------------------------------------------------*/
wire real tlc_div;
assign tlc_div = sum * (1e3/(5.1e3 + 1e3));
schmitt coarse_ternary(_TLC1H, tlc_div);

/*-----------------------------------------------------------------------------.
| Ambiguity Detect                                                             |
'-----------------------------------------------------------------------------*/
wire real amb_div;
real rth = 1/((1/68e3) + (1/56e3));
assign amb_div = _CCOSH * (rth/(rth + 150e3)) * (1e3/(1e3+27e3));
schmitt ambiguity_detect(_ADHI, amb_div);

endmodule
`default_nettype wire
