`timescale 1ns / 1ps
`default_nettype none
`include "constants.vams"

module cdu_sim;

/*-----------------------------------------------------------------------------.
| Simulation stuff                                                             |
'-----------------------------------------------------------------------------*/
reg rst_n = 0;
reg fine1_en = 0;

reg real shaft_angle = 1.1780972450961724;

reg ADC1;
reg ADC2;
reg ADC3;
reg ADC4;
reg ADC5;
reg ADC6;
reg ADC7;
reg ADC8;
reg ADC9;
reg ADC10;
reg ADC11;
reg ADC12;

/*-----------------------------------------------------------------------------.
| External inputs                                                              |
'-----------------------------------------------------------------------------*/
// 51.2kHz clock from AGC (transformer-coupled; modeled as digital)
reg CLOCKH;
initial begin
    CLOCKH = 0;
end
always begin
    #2938.680 CLOCKH = 0;
    #16592.520 CLOCKH = 1;
end

// 28Vrms 800~ 1% ISS reference
reg real U28RFH;
initial begin
    U28RFH = 0.1;
end
always begin
    #2500 U28RFH = 28*$sqrt(2)*$sin(`M_TWO_PI*800*($realtime/1e9));
end

// 1X resolver sin/cos outputs
wire real ACSINH;
wire real ACCOSH;
assign ACSINH = (26/28.0)*$sin(shaft_angle)*U28RFH;
assign ACCOSH = (26/28.0)*$cos(shaft_angle)*U28RFH;

// AGC moding inputs
reg AGCCA = 1;
reg AGCZ = 1;
reg AGCEEC = 1;

/*-----------------------------------------------------------------------------.
| CDU                                                                          |
'-----------------------------------------------------------------------------*/
cdu cdu(
    .rst_n(rst_n),
    .fine1_en(fine1_en),
    .ADC1(ADC1),
    .ADC2(ADC2),
    .ADC3(ADC3),
    .ADC4(ADC4),
    .ADC5(ADC5),
    .ADC6(ADC6),
    .ADC7(ADC7),
    .ADC8(ADC8),
    .ADC9(ADC9),
    .ADC10(ADC10),
    .ADC11(ADC11),
    .ADC12(ADC12),

    .CLOCKH(CLOCKH),
    .U28RFH(U28RFH),

    .AGCCA(AGCCA),
    .AGCZ(AGCZ),
    .AGCEEC(AGCEEC),

    .ACSINH(ACSINH),
    .ACCOSH(ACCOSH)
);

/*-----------------------------------------------------------------------------.
| Simulation                                                                   |
'-----------------------------------------------------------------------------*/
initial begin
    $dumpfile("dump.fst");
    $dumpvars(0, cdu_sim);
    ADC1 = 0;
    ADC2 = 0;
    ADC3 = 0;
    ADC4 = 0;
    ADC5 = 0;
    ADC6 = 0;
    ADC7 = 0;
    ADC8 = 0;
    ADC9 = 0;
    ADC10 = 0;
    ADC11 = 0;
    ADC12 = 0;
    #1000 rst_n = 1'b1;
    ADC3 = 1;
    ADC5 = 1;
    ADC9 = 1;
    #10000000;
    ADC9 = 0;
    #10000000;
    ADC3 = 0;
    ADC5 = 0;
    ADC4 = 1;
    ADC6 = 1;
    ADC9 = 1;
    #10000000;
    ADC9 = 0;
    #10000000;
    ADC4 = 0;
    ADC2 = 1;
    ADC9 = 1;

    #2000000000 $finish;
end

endmodule
`default_nettype wire
