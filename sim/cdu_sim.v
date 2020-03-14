`timescale 1ns / 1ps
`default_nettype none
`include "constants.vams"

module cdu_sim;

/*-----------------------------------------------------------------------------.
| Simulation stuff                                                             |
'-----------------------------------------------------------------------------*/
reg rst_n = 0;
reg fine1_en = 1;

reg real shaft_angle = 4.72984227;
reg real atca_phase = 1.5;
reg lgc = 1;

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
reg real atca_ref;
initial begin
    U28RFH = 0.1;
    atca_ref = 0.1;
end
always begin
    #2500 U28RFH = 28*$sqrt(2)*$sin(`M_TWO_PI*800*($realtime/1e9));
    atca_ref = 15*$sqrt(2)*$sin(`M_TWO_PI*800*($realtime/1e9) - atca_phase);
end

// 1X resolver sin/cos outputs
wire real ACSINH;
wire real ACCOSH;
wire real resolver_ref;
assign resolver_ref = lgc ? U28RFH : atca_ref;
assign ACSINH = (26/28.0)*$sin(shaft_angle)*resolver_ref;
assign ACCOSH = (26/28.0)*$cos(shaft_angle)*resolver_ref;

// AGC moding inputs
reg AGCCA = 1;
reg AGCZ = 1;
reg AGCEEC = 1;

/*-----------------------------------------------------------------------------.
| Test points                                                                  |
'-----------------------------------------------------------------------------*/
wire real ATPCA;
wire ATPC1;
wire ATPF1;
wire ATPF2;
wire ATPS;
wire ATPUG;
wire ATPAD;
wire ATPPI;

/*-----------------------------------------------------------------------------.
| CDU                                                                          |
'-----------------------------------------------------------------------------*/
cdu cdu(
    .rst_n(rst_n),
    .fine1_en(fine1_en),

    .CLOCKH(CLOCKH),
    .U28RFH(U28RFH),

    .AGCCA(AGCCA),
    .AGCZ(AGCZ),
    .AGCEEC(AGCEEC),

    .ACSINH(ACSINH),
    .ACCOSH(ACCOSH),

    .ATPCA(ATPCA),
    .ATPC1(ATPC1),
    .ATPF1(ATPF1),
    .ATPF2(ATPF2),
    .ATPS(ATPS),
    .ATPUG(ATPUG),
    .ATPAD(ATPAD),
    .ATPPI(ATPPI)
);

/*-----------------------------------------------------------------------------.
| Simulation                                                                   |
'-----------------------------------------------------------------------------*/
initial begin
    $dumpfile("dump.fst");
    $dumpvars(0, cdu_sim);
    AGCZ = 0;
    #1000 rst_n = 1'b1;
    #5000000;
    AGCZ = 1;
    #1200000000 lgc = 0;
    #5000000000 $finish;
end

endmodule
`default_nettype wire
