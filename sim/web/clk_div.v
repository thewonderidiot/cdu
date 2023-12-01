`timescale 1ns / 1ps
`default_nettype none

module clk_div(
    input wire clk1,
    output wire clk2
);

parameter duty_cycle = 1;
parameter divisor = 2;

localparam bits = $clog2(divisor + 1);

reg [bits-1:0] counter;
assign clk2 = counter <= (duty_cycle - 1);

initial begin
    counter = divisor - 1;
end

always @(posedge clk1) begin
    if (counter == '0) begin
        counter <= divisor - 1;
    end else begin
        counter <= counter - 1;
    end
end


endmodule
`default_nettype wire

