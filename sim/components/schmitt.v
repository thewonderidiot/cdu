`timescale 1ns / 1ps
`default_nettype none

module schmitt(
    output reg y,
    input wire real a
);

parameter set_voltage = 1;
parameter rst_voltage = 0.5;

wire set = (a >= set_voltage);
wire rst = (a >= rst_voltage);

initial begin
    y = 0;
end
always @(posedge set or negedge rst) begin
    if (set) begin
        y <= 1'b1;
    end else if (~rst) begin
        y <= 1'b0;
    end
end


endmodule
`default_nettype wire
