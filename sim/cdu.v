`timescale 1ns / 1ps
`default_nettype none

module cdu(
    input wire rst_n,
    input wire fine1_en,

    input wire ADC1,
    input wire ADC2,
    input wire ADC3,
    input wire ADC4,
    input wire ADC5,
    input wire ADC6,
    input wire ADC7,
    input wire ADC8,
    input wire ADC9,
    input wire ADC10,
    input wire ADC11,
    input wire ADC12,

    input wire CLOCKH,
    input wire real U28RFH,
    input wire real ACSINH,
    input wire real ACCOSH
);

/*------------------------------------------------.
| Simulation stuff (to be pushed internal)        |
'------------------------------------------------*/
reg ATLF1H = 0;

always begin
    #625000 ATLF1H = 0;
    #625000 ATLF1H = fine1_en;
end

/*------------------------------------------------.
| Internal wiring                                 |
'------------------------------------------------*/
wire _51KPHI;
wire _51KPHI_n;
wire UREF1H;
wire FAZ1HI;
wire FAZ2DR;
wire FAZ2DR_n;
wire FAZ3DR;
wire FAZ4DR;
wire FAZ2HI;
wire FAZ2HI_n;
wire FAZ3HI;
wire FAZ4HI;
wire PS25KH;
wire ISSIHI;
wire ISSI2H;
wire ISSI3H;
wire AUPLVL;
wire ADNLVL;
wire ATPF1;
wire ATPF2;
wire ATPC1;
wire ATLC1H;
wire ATPS;
reg ATLF2H = 0;
reg AAO = 0;

/*------------------------------------------------.
| Modules                                         |
'------------------------------------------------*/
mode x01(
    .rst_n(rst_n),
    .FAZ2DR(FAZ2DR),
    .FAZ2DR_n(FAZ2DR_n),
    .FAZ3DR(FAZ3DR),
    .FAZ4DR(FAZ4DR),
    .FAZ2HI(FAZ2HI),
    .FAZ2HI_n(FAZ2HI_n),
    .FAZ3HI(FAZ3HI),
    .FAZ4HI(FAZ4HI)
);

digital_mode x02(
    .rst_n(rst_n),
    ._51KPHI(_51KPHI),
    .FAZ2HI(FAZ2HI),
    .FAZ2HI_n(FAZ2HI_n),
    .FAZ3HI(FAZ3HI),
    .FAZ4HI(FAZ4HI),
    .ISSIHI(ISSIHI),

    ._51KPHI_n(_51KPHI_n),
    .FAZ1HI(FAZ1HI),
    .FAZ2DR(FAZ2DR),
    .FAZ2DR_n(FAZ2DR_n),
    .FAZ3DR(FAZ3DR),
    .FAZ4DR(FAZ4DR),
    .PS25KH(PS25KH),
    .ISSI2H(ISSI2H),
    .ISSI3H(ISSI3H)
);

interrogate x03(
    .rst_n(rst_n),
    .CLOCKH(CLOCKH),
    .U28RFH(U28RFH),
    ._51KPHI(_51KPHI),
    .UREF1H(UREF1H),
    .ISSIHI(ISSIHI)
);

coarse x04(
    .rst_n(rst_n),
    ._CSINH(ACSINH),
    ._CCOSH(ACCOSH),
    ._28RFH(U28RFH),

    ._DC1(ADC1),
    ._DC2(ADC2),
    ._DC3(ADC3),
    ._DC4(ADC4),
    ._DC5(ADC5),
    ._DC6(ADC6),
    ._DC7(ADC7),
    ._DC8(ADC8),
    ._DC9(ADC9),
    ._DC10(ADC10),
    ._DC11(ADC11),
    ._DC12(ADC12),

    ._TLC1H(ATLC1H)
);

error_angle x05(
    .rst_n(rst_n),
    .FAZ2HI(FAZ2HI),
    ._REF1H(UREF1H),
    .___IHI(ISSIHI),
    .___I2H(ISSI2H),
    .___I3H(ISSI3H),
    ._AO(AAO),
    ._TLC1H(ATLC1H),
    ._TLF1H(ATLF1H),
    ._TLF2H(ATLF2H),

    ._UPLVL(AUPLVL),
    ._DNLVL(ADNLVL),
    ._TPF1(ATPF1),
    ._TPF2(ATPF2),
    ._TPC1(ATPC1),
    ._TPS(ATPS)
);
    
endmodule
`default_nettype wire
