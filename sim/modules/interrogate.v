`timescale 1ns / 1ps
`default_nettype none

module interrogate(
    input wire rst_n,
    input wire CLOCKH,
    input wire real U28RFH,
    output wire _51KPHI,
    output wire UREF1H,
    output reg ISSIHI
);

/*-----------------------------------------------------------------------------.
| 51.2kpps pulse train                                                         |
'-----------------------------------------------------------------------------*/
assign _51KPHI = CLOCKH;

/*-----------------------------------------------------------------------------.
| ISS Reference Generator                                                      |
'-----------------------------------------------------------------------------*/
assign UREF1H = (U28RFH <= 0.0);

/*-----------------------------------------------------------------------------.
| ISS Interrogate Generator                                                    |
'-----------------------------------------------------------------------------*/
initial begin
    ISSIHI = 0;
end

always @(posedge UREF1H or negedge UREF1H) begin
    #311000 ISSIHI = 1;
    #3000 ISSIHI = 0;
end

endmodule
`default_nettype wire
