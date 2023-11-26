`timescale 1ns / 1ps
`default_nettype none

module cdu(
    input wire clk,
    input wire rst_n,

    input wire CLOCKH,
    input wire real U28RFH,

    input wire AGCCA,
    input wire AGCZ,
    input wire AGCEEC,

    input wire real ACSINH,
    input wire real ACCOSH,
    input wire real AFSINH,
    input wire real AFCOSH,

    input wire AFpPCH,
    input wire AFmPCH,

    output wire ATpPGH,
    output wire ATmPGH,

    output wire real ADACH,
    output wire real ACAEHI,

    // Test points
    output wire real ATPCA,
    output wire real AMTPA,
    output wire ATPC1,
    output wire ATPF1,
    output wire ATPF2,
    output wire ATPS,
    output wire ATPUG,
    output wire ATPAD,
    output wire ATPPI
);

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
wire FAZ4CA;
wire PS25KH;
wire ISSIHI;
wire ISSI2H;
wire ISSI3H;
wire _800LHI;
wire ISSCA;
wire ISSZ;
wire ISSEEC;
wire ISSZDR;
wire DMMCA;
wire UINHRC;
wire ACDUZ;
wire BCDUZ;
wire CCDUZ;
wire AUPLVL;
wire ADNLVL;
wire ATLC1H;
wire ATLF2H;
wire ATLF1H;
wire AADHI;
wire APIHI;
wire AAO;
wire AQ;
wire ACA;
wire AEEC;
wire AmPCH;
wire ApPCH;
wire AmPGH;
wire ApPGH;
wire AmDAPL;
wire ApDAPL;
wire ARSETB;
wire ADEL0H;
wire ADEL2H;
wire ADC1;
wire ADC2;
wire ADC3;
wire ADC4;
wire ADC5;
wire ADC6;
wire ADC7;
wire ADC8;
wire ADC9;
wire ADC10;
wire ADC11;
wire ADC12;
wire AD1;
wire AD2;
wire AD3;
wire AD4;
wire AD5;
wire AD6;
wire AD7;
wire AD8;
wire AD9;
wire AD10;
wire AD11;
wire AD12;
wire AD13;
wire AD14;
wire AD15;
wire AD16;
wire AD17;
wire AD18;
wire AD19;
wire AD20;
wire AD21;
wire ADD0;
wire ADD1;
wire ADD2;
wire ADD3;
wire ADD4;
wire ADD5;
wire ADD6;
wire ADD7;
wire ADD8;
wire BCA;
wire BEEC;
wire CCA;
wire CEEC;

wire real AS10;
wire real AS13;
wire real AS1SIN;
wire real AS2SIN;
wire real AS3SIN;
wire real AS4SIN;
wire real AS1COS;
wire real AS2COS;
wire real AS3COS;
wire real AS4COS;
wire real A1125A;
wire real A1125B;
wire real ABIASA;
wire real ABIASB;

/*------------------------------------------------.
| Modules                                         |
'------------------------------------------------*/
// Common modules
mode x01(
    .rst_n(rst_n),
    .FAZ2DR(FAZ2DR),
    .FAZ2DR_n(FAZ2DR_n),
    .FAZ3DR(FAZ3DR),
    .FAZ4DR(FAZ4DR),

    .AGCCA(AGCCA),
    .AGCZ(AGCZ),
    .AGCEEC(AGCEEC),
    .ISSZDR(ISSZDR),

    .FAZ2HI(FAZ2HI),
    .FAZ2HI_n(FAZ2HI_n),
    .FAZ3HI(FAZ3HI),
    .FAZ4HI(FAZ4HI),

    .ISSCA(ISSCA),
    .ISSZ(ISSZ),
    .ISSEEC(ISSEEC),
    .ACDUZ(ACDUZ),
    .BCDUZ(BCDUZ),
    .CCDUZ(CCDUZ)
);

digital_mode x02(
    .clk(clk),
    .rst_n(rst_n),
    ._51KPHI(_51KPHI),
    .FAZ2HI(FAZ2HI),
    .FAZ2HI_n(FAZ2HI_n),
    .FAZ3HI(FAZ3HI),
    .FAZ4HI(FAZ4HI),
    .UREF1H(UREF1H),
    .ISSIHI(ISSIHI),

    ._51KPHI_n(_51KPHI_n),
    .FAZ1HI(FAZ1HI),
    .FAZ2DR(FAZ2DR),
    .FAZ2DR_n(FAZ2DR_n),
    .FAZ3DR(FAZ3DR),
    .FAZ4DR(FAZ4DR),
    .FAZ4CA(FAZ4CA),
    .PS25KH(PS25KH),
    .ISSI2H(ISSI2H),
    .ISSI3H(ISSI3H),
    ._800LHI(_800LHI),

    .ISSCA(ISSCA),
    .ISSZ(ISSZ),
    .ISSEEC(ISSEEC),

    .ISSZDR(ISSZDR),
    .DMMCA(DMMCA),
    .UINHRC(UINHRC),

    .AADHI(AADHI),
    .ARSETB(ARSETB),
    .AAO(AAO),
    .AQ(AQ),
    .ACA(ACA),
    .AEEC(AEEC),

    .BCDUZ(BCDUZ),
    .BCA(BCA),
    .BEEC(BEEC),

    .CCDUZ(CCDUZ),
    .CCA(CCA),
    .CEEC(CEEC)
);

interrogate x03(
    .clk(clk),
    .rst_n(rst_n),
    .CLOCKH(CLOCKH),
    .U28RFH(U28RFH),
    ._51KPHI(_51KPHI),
    .UREF1H(UREF1H),
    .ISSIHI(ISSIHI)
);

// Inner gimbal
da_converter s13(
    .rst_n(rst_n),

    ._28RFH(U28RFH),

    ._FpPCH(AFpPCH),
    ._FmPCH(AFmPCH),
    ._pPCH(ApPCH),
    ._mPCH(AmPCH),

    ._pPGH(ApPGH),
    ._mPGH(AmPGH),
    ._TpPGH(ATpPGH),
    ._TmPGH(ATmPGH),

    ._DD0(ADD0),
    ._DD1(ADD1),
    ._DD2(ADD2),
    ._DD3(ADD3),
    ._DD4(ADD4),
    ._DD5(ADD5),
    ._DD6(ADD6),
    ._DD7(ADD7),
    ._DD8(ADD8),

    ._DACH(ADACH),
    ._CAEHI(ACAEHI)
);

error_angle s14(
    .clk(clk),
    .rst_n(rst_n),
    .FAZ1HI(FAZ1HI),
    .FAZ2HI(FAZ2HI),
    .FAZ2HI_n(FAZ2HI_n),
    .FAZ3HI(FAZ3HI),
    .FAZ4CA(FAZ4CA),
    ._REF1H(UREF1H),
    .___IHI(ISSIHI),
    .___I2H(ISSI2H),
    .___I3H(ISSI3H),
    ._800LHI(_800LHI),
    ._INHRC(UINHRC),
    ._CA(ACA),
    ._EEC(AEEC),
    ._mPCH(AmPCH),
    ._pPCH(ApPCH),
    ._AO(AAO),
    ._TLC1H(ATLC1H),
    ._TLF1H(ATLF1H),
    ._TLF2H(ATLF2H),
    ._ADHI(AADHI),

    ._DEL0H(ADEL0H),
    ._DEL2H(ADEL2H),

    ._UPLVL(AUPLVL),
    ._DNLVL(ADNLVL),
    ._mPGH(AmPGH),
    ._pPGH(ApPGH),
    ._PIHI(APIHI),
    ._mDAPL(AmDAPL),
    ._pDAPL(ApDAPL),

    ._DD0(ADD0),
    ._DD1(ADD1),
    ._DD2(ADD2),
    ._DD3(ADD3),
    ._DD4(ADD4),
    ._DD5(ADD5),
    ._DD6(ADD6),
    ._DD7(ADD7),
    ._DD8(ADD8),

    ._TPF1(ATPF1),
    ._TPF2(ATPF2),
    ._TPC1(ATPC1),
    ._TPS(ATPS),
    ._TPAD(ATPAD),
    ._TPUG(ATPUG),
    ._TPPI(ATPPI)
);

coarse s15(
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

    ._TLC1H(ATLC1H),
    ._ADHI(AADHI),

    ._TPCA(ATPCA)
);

read_counter s16(
    .clk(clk),
    .rst_n(rst_n),
    .FAZ2HI_n(FAZ2HI_n),
    .FAZ3HI(FAZ3HI),
    ._CDUZ(ACDUZ),
    ._Q(AQ),
    ._UPLVL(AUPLVL),
    ._DNLVL(ADNLVL),
    ._PIHI(APIHI),

    ._RSETB(ARSETB),
    ._DEL0H(ADEL0H),
    ._DEL2H(ADEL2H),

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

    ._D1(AD1),
    ._D2(AD2),
    ._D3(AD3),
    ._D4(AD4),
    ._D5(AD5),
    ._D6(AD6),
    ._D7(AD7),
    ._D8(AD8),
    ._D9(AD9),
    ._D10(AD10),
    ._D11(AD11),
    ._D12(AD12),
    ._D13(AD13),
    ._D14(AD14),
    ._D15(AD15),
    ._D16(AD16),
    ._D17(AD17),
    ._D18(AD18),
    ._D19(AD19),
    ._D20(AD20),
    ._D21(AD21)
);

quadrant_selector s17(
    .clk(clk),
    .rst_n(rst_n),
    ._FSINH(AFSINH),
    ._FCOSH(AFCOSH),
    
    ._D1(AD1),
    ._D2(AD2),
    ._D3(AD3),
    ._D4(AD4),
    ._D5(AD5),
    ._D6(AD6),
    ._D7(AD7),
    ._D8(AD8),
    ._D9(AD9),
    ._D10(AD10),
    ._D11(AD11),
    ._D12(AD12),
    ._D13(AD13),
    ._D14(AD14),

    ._S1SIN(AS1SIN),
    ._S2SIN(AS2SIN),
    ._S3SIN(AS3SIN),
    ._S4SIN(AS4SIN),

    ._S1COS(AS1COS),
    ._S2COS(AS2COS),
    ._S3COS(AS3COS),
    ._S4COS(AS4COS),

    ._S10(AS10),
    ._S13(AS13),

    ._1125A(A1125A),
    ._BIASA(ABIASA),
    ._1125B(A1125B),
    ._BIASB(ABIASB)
);

msa_qr s18(
    .rst_n(rst_n),

    ._D15(AD15),
    ._D16(AD16),
    ._D17(AD17),
    ._D18(AD18),
    ._D19(AD19),
    ._D20(AD20),
    ._D21(AD21),

    ._S1SIN(AS1SIN),
    ._S2SIN(AS2SIN),
    ._S3SIN(AS3SIN),
    ._S4SIN(AS4SIN),

    ._S1COS(AS1COS),
    ._S2COS(AS2COS),
    ._S3COS(AS3COS),
    ._S4COS(AS4COS),

    ._S10(AS10),
    ._S13(AS13),

    ._1125A(A1125A),
    ._BIASA(ABIASA),
    ._1125B(A1125B),
    ._BIASB(ABIASB),

    ._TLF2H(ATLF2H),
    ._TLF1H(ATLF1H),

    ._MTPA(AMTPA)
);

endmodule
`default_nettype wire
