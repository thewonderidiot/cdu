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
wire real sin_4vrms;
wire real cos_4vrms;
wire real ref_4vrms;
assign sin_4vrms = (4.0/26.0) * _CSINH;
assign cos_4vrms = (4.0/26.0) * _CCOSH;
assign ref_4vrms = (4.0/28.0) * _28RFH;

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

assign s1  = _DC1  ? -sin_4vrms * (25e3 /  27.06e3) : 0.0;
assign s2  = _DC2  ? -sin_4vrms * (25e3 /  65.33e3) : 0.0;
assign s3  = _DC3  ?  sin_4vrms * (25e3 /  27.06e3) : 0.0;
assign s4  = _DC4  ?  sin_4vrms * (25e3 /  65.33e3) : 0.0;
assign s5  = _DC5  ? -cos_4vrms * (25e3 /  65.33e3) : 0.0;
assign s6  = _DC6  ? -cos_4vrms * (25e3 /  27.06e3) : 0.0;
assign s7  = _DC7  ?  cos_4vrms * (25e3 /  65.33e3) : 0.0;
assign s8  = _DC8  ?  cos_4vrms * (25e3 /  27.06e3) : 0.0;
assign s9  = _DC9  ?  ref_4vrms * (25e3 /  65.33e3) : 0.0;
assign s10 = _DC10 ?  ref_4vrms * (25e3 / 128.15e3) : 0.0;
assign s11 = _DC11 ?  ref_4vrms * (25e3 / 100e3) * (2.6e3/(4.0e3 + 2.6e3)): 0.0;
assign s12 = _DC12 ?  ref_4vrms * (25e3 / 100e3) * (2.0e3/(8.0e3 + 2.0e3)): 0.0;

/*-----------------------------------------------------------------------------.
| Summing amplifier                                                            |
'-----------------------------------------------------------------------------*/
wire real sum;
assign sum = s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12;
assign _TPCA = sum;

/*-----------------------------------------------------------------------------.
| Schmitt Trigger                                                              |
'-----------------------------------------------------------------------------*/
assign _TLC1H = (sum >= (0.56*$sqrt(2)));

/*-----------------------------------------------------------------------------.
| Ambiguity Detect                                                             |
'-----------------------------------------------------------------------------*/
// FIXME: The trigger should be on 12.25Vpp. Find the missing scaling factor.
assign _ADHI = (_CCOSH >= 21.09);

endmodule
`default_nettype wire