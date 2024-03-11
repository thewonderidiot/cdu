`timescale 1ns / 1ps
`default_nettype none

module interrogate(
    input wire clk,
    input wire rst_n,
    input wire CLOCKH,
    input wire real U28RFH,
    input wire real O28RFH,
    output wire _51KPHI,
    output wire UREF1H,
    output reg ISSIHI,
    output wire SREF1H,
    output reg SHIHI
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

`ifdef TARGET_WEB
reg [10:0] int_count;
reg UREF1H_delay;
initial begin
    int_count = 0;
    UREF1H_delay = 0;
end


always @(posedge clk) begin
    if (UREF1H_delay != UREF1H) begin
        int_count <= 11'd1608;
    end else begin
        if (int_count > 0) begin
            int_count <= int_count - 1;
        end
    end
    UREF1H_delay <= UREF1H;
end

always @(*) begin
    ISSIHI = (int_count > 0) && (int_count <= 15);
end

`else

always @(posedge UREF1H or negedge UREF1H) begin
    #311000 ISSIHI = 1;
    #3000 ISSIHI = 0;
end

`endif

/*-----------------------------------------------------------------------------.
| Shaft Reference Generator                                                    |
'-----------------------------------------------------------------------------*/
assign SREF1H = (O28RFH <= 0.0);

/*-----------------------------------------------------------------------------.
| ISS Interrogate Generator                                                    |
'-----------------------------------------------------------------------------*/
initial begin
    SHIHI = 0;
end

`ifndef TARGET_WEB

always @(posedge SREF1H or negedge SREF1H) begin
    #311000 SHIHI = 1;
    #3000 SHIHI = 0;
end

`endif

endmodule
`default_nettype wire
