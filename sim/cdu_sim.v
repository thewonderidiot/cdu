`timescale 1ns / 1ps
`default_nettype none
`include "constants.vams"

module cdu_sim;

/*-----------------------------------------------------------------------------.
| Simulation stuff                                                             |
'-----------------------------------------------------------------------------*/
reg clk = 0;
reg rst_n = 0;

reg real shaft_angle = 150;
reg real atca_phase = 80;
reg lgc = 1;

wire real shaft_angle_rad;
wire real atca_phase_rad;
assign shaft_angle_rad = shaft_angle * `M_PI / 180;
assign atca_phase_rad = atca_phase * `M_PI / 180;

reg [15:0] error_count = 0;

/*-----------------------------------------------------------------------------.
| CDU outputs                                                                  |
'-----------------------------------------------------------------------------*/
wire ATpPGH;
wire ATmPGH;
wire real ADACH;
wire real ACAEHI;

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
real ACSINH;
real ACCOSH;
real AFSINH;
real AFCOSH;

wire real resolver_ref;
assign resolver_ref = lgc ? U28RFH : atca_ref;

always @(*) begin
    ACSINH <= #10416.66 (26/28.0)*$sin(shaft_angle_rad)*resolver_ref;
    ACCOSH <= #10416.66 (26/28.0)*$cos(shaft_angle_rad)*resolver_ref;
    AFSINH <= #38194.44 (5/28.0)*$sin(16*shaft_angle_rad)*resolver_ref;
    AFCOSH <= #38194.44 (5/28.0)*$cos(16*shaft_angle_rad)*resolver_ref;
end

// AGC moding inputs
reg AGCCA = 1;
reg AGCZ = 1;
reg AGCEEC = 1;

// Error counter pulse inputs
reg AFmPCH = 0;
reg AFpPCH = 0;

always begin
    #310000;
    if (error_count > 0) begin
        AFpPCH = 1;
        error_count = error_count - 1;
    end else if (error_count < 0) begin
        AFmPCH = 1;
        error_count = error_count + 1;
    end
    #2500;
    AFmPCH = 0;
    AFpPCH = 0;
end

// Error counter shaft loop
always begin
    #10000000;
    if (ADACH > 0.015) begin
        shaft_angle += 0.0439453125;
    end
end

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
    .clk(clk),
    .rst_n(rst_n),

    .CLOCKH(CLOCKH),
    .U28RFH(U28RFH),
    .O28RFH(0),

    .AGCCA(AGCCA),
    .AGCZ(AGCZ),
    .AGCEEC(AGCEEC),
    .AGCDAE(1'b1),
    .AGCRRZ(1'b1),
    .AGCTVC(1'b1),

    .ACSINH(ACSINH),
    .ACCOSH(ACCOSH),
    .AFSINH(AFSINH),
    .AFCOSH(AFCOSH),

    .AFpPCH(AFpPCH),
    .AFmPCH(AFmPCH),

    .ATpPGH(ATpPGH),
    .ATmPGH(ATmPGH),

    .ADACH(ADACH),
    .ACAEHI(ACAEHI),

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
    /* AGCZ = 0; */
    #1000 rst_n = 1'b1;
    #500000000;
    /* lgc = 0; */
    AGCZ = 1;
    /* AGCEEC = 0; */
    /* AGCCA = 0; */
    /* error_count = 384; */
    #500000000 $finish;
end

endmodule
`default_nettype wire
