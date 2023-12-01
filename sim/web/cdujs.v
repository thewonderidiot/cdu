`timescale 1ns / 1ps
`default_nettype none


module cdu_sim(
    input wire clk,
    input wire rst_n,
    input wire real shaft_angle,
    output wire real ATPCA,
    output wire real cdux
);

`define M_PI 3.14159265359


localparam SIM_HZ = 23'd5120000;

wire real shaft_angle_rad;
assign shaft_angle_rad = shaft_angle * `M_PI / 180;

/*-----------------------------------------------------------------------------.
| CDU outputs                                                                  |
'-----------------------------------------------------------------------------*/
wire ATpPGH;
wire ATmPGH;
wire real ADACH;
wire real ACAEHI;

reg ATpPGH_delayed;
reg ATmPGH_delayed;
reg [14:0] agc_count = 0;
always @(posedge clk) begin
    ATpPGH_delayed <= ATpPGH;
    ATmPGH_delayed <= ATmPGH;
    if (ATpPGH && ~ATpPGH_delayed) begin
        agc_count <= agc_count + 1;
    end else if (ATmPGH && ~ATmPGH_delayed) begin
        agc_count <= agc_count - 1;
    end
end

assign cdux = $itor(agc_count)/32768.0*360.0;


/*-----------------------------------------------------------------------------.
| External inputs                                                              |
'-----------------------------------------------------------------------------*/
reg AGCCA = 1;
reg AGCZ = 1;
reg AGCEEC = 1;

wire CLOCKH;

reg [22:0] ref_counter;
initial begin
    ref_counter = 0;
end
always @(posedge clk) begin
    if (ref_counter < (SIM_HZ - 1)) begin
        ref_counter <= ref_counter + 1;
    end else begin
        ref_counter <= 0;
    end
end

real U28RFH;
always @(posedge clk) begin
    U28RFH <= 28.0*$sqrt(2.0)*$sin(2.0*`M_PI*800.0*($itor(ref_counter)/SIM_HZ));
end

clk_div #(15,100) clk_div1(clk, CLOCKH);

// 1X resolver sin/cos outputs
wire real ACSINH;
wire real ACCOSH;
wire real AFSINH;
wire real AFCOSH;

wire real resolver_ref;
assign resolver_ref = U28RFH;

assign ACSINH = (26/28.0)*$sin(shaft_angle_rad)*resolver_ref;
assign ACCOSH = (26/28.0)*$cos(shaft_angle_rad)*resolver_ref;

assign AFSINH = (5/28.0)*$sin(16*shaft_angle_rad)*resolver_ref;
assign AFCOSH = (5/28.0)*$cos(16*shaft_angle_rad)*resolver_ref;

// Error counter pulse inputs
reg AFmPCH = 0;
reg AFpPCH = 0;

/*-----------------------------------------------------------------------------.
| Test points                                                                  |
'-----------------------------------------------------------------------------*/
/* wire real ATPCA; */
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
cdu cdu1(
    .clk(clk),
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

endmodule
`default_nettype wire
