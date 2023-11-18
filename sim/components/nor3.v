`timescale 1ns / 1ps
`default_nettype none

module nor3(
    output wire y,

    input wire a,
    input wire b,
    input wire c,

    input wire clk,
    input wire rst_n
);

parameter iv = 1'b0;

`ifdef TARGET_FPGA

reg yc;
reg yp;
reg yn;

initial yc = iv;
initial yp = iv;

assign y = yc;

always @(*) begin
    if ((y != yp) & (y == iv)) begin
        yn = iv;
    end else begin
        yn = ~(a | b | c);
    end
end

always @(posedge clk) begin
    if (~rst_n) begin
        yc <= iv;
        yp <= iv;
    end else begin
        yp <= y;
        yc <= yn;
    end
end

`else

//pullup r1(y);
assign #20 y = (rst_n) ? ~(a | b | c) : iv;

`endif

endmodule
`default_nettype wire
