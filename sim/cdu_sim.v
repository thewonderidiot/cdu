`timescale 1ns / 1ps
`default_nettype none
`include "constants.vams"

module cdu_sim;

/*-----------------------------------------------------------------------------.
| Simulation stuff                                                             |
'-----------------------------------------------------------------------------*/
reg rst_n = 0;

reg real shaft_angle = 180;
reg real atca_phase = 20;
reg lgc = 1;

wire real shaft_angle_rad;
wire real atca_phase_rad;
assign shaft_angle_rad = shaft_angle * `M_PI / 180;
assign atca_phase_rad = atca_phase * `M_PI / 180;

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
    atca_ref = 15*$sqrt(2)*$sin(`M_TWO_PI*800*($realtime/1e9) + atca_phase_rad);
end

// 1X resolver sin/cos outputs
wire real ACSINH;
wire real ACCOSH;
wire real AFSINH;
wire real AFCOSH;

wire real resolver_ref;
assign resolver_ref = lgc ? U28RFH : atca_ref;

assign ACSINH = (26/28.0)*$sin(shaft_angle_rad)*resolver_ref;
assign ACCOSH = (26/28.0)*$cos(shaft_angle_rad)*resolver_ref;

assign AFSINH = (5/28.0)*$sin(16*shaft_angle_rad)*resolver_ref;
assign AFCOSH = (5/28.0)*$cos(16*shaft_angle_rad)*resolver_ref;

// AGC moding inputs
reg AGCCA = 1;
reg AGCZ = 1;
reg AGCEEC = 1;

/*-----------------------------------------------------------------------------.
| CDU outputs                                                                  |
'-----------------------------------------------------------------------------*/
wire ATpPGH;
wire ATmPGH;

/*-----------------------------------------------------------------------------.
| Test points                                                                  |
'-----------------------------------------------------------------------------*/
wire real ATPCA;
wire real AMTPA;
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

    .CLOCKH(CLOCKH),
    .U28RFH(U28RFH),

    .AGCCA(AGCCA),
    .AGCZ(AGCZ),
    .AGCEEC(AGCEEC),

    .ACSINH(ACSINH),
    .ACCOSH(ACCOSH),
    .AFSINH(AFSINH),
    .AFCOSH(AFCOSH),

    .ATpPGH(ATpPGH),
    .ATmPGH(ATmPGH),

    .ATPCA(ATPCA),
    .AMTPA(AMTPA),
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
    #3000000000 lgc = 0;
    #1000000000 $finish;
end

endmodule
`default_nettype wire
