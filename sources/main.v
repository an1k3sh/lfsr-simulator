`timescale 1ns/1ps
`include "prng.v"
`include "clocker.v"

module main(
    input wire clk,
    input wire reset,
    output wire slow_clk,
    output wire led
);

wire[4:0] init = 5'b10101;
wire[4:0] P = 5'b00110;

slow_clocker clocker_ (.clk(clk), .reset(reset), .slow_clk(slow_clk));
LFSR lfsr_ (.clk(slow_clk), .reset(reset), .init(init), .P(P), .out(led));

endmodule