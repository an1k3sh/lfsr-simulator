`timescale 1ns/1ps
`include "prng.v"
`include "clocker.v"

module main(
    input wire clk,
    input wire reset,
    output wire slow_clk,
    output wire[6:0] led
);

// wire[4:0] init = 5'b10101;
// wire[4:0] P = 5'b00110;

wire[10:0] init = 11'b10101010101;
wire[10:0] P = 11'b11001100110;

slow_clocker clocker_ (.clk(clk), .reset(reset), .slow_clk(slow_clk));
//LFSR lfsr_1 (.clk(clk), .reset(reset), .init(init[4:0]), .P(P[4:0]), .out(led[0]));
//LFSR lfsr_2 (.clk(clk), .reset(reset), .init(init[5:1]), .P(P[5:1]), .out(led[1]));
//LFSR lfsr_3 (.clk(clk), .reset(reset), .init(init[6:2]), .P(P[6:2]), .out(led[2]));
//LFSR lfsr_4 (.clk(clk), .reset(reset), .init(init[7:3]), .P(P[7:3]), .out(led[3]));
//LFSR lfsr_5 (.clk(clk), .reset(reset), .init(init[8:4]), .P(P[8:4]), .out(led[4]));
//LFSR lfsr_6 (.clk(clk), .reset(reset), .init(init[9:5]), .P(P[9:5]), .out(led[5]));
//LFSR lfsr_7 (.clk(clk), .reset(reset), .init(init[10:6]), .P(P[10:6]), .out(led[6]));

LFSR lfsr_1 (.clk(slow_clk), .reset(reset), .init(init[4:0]), .P(P[4:0]), .out(led[0]));
LFSR lfsr_2 (.clk(slow_clk), .reset(reset), .init(init[5:1]), .P(P[5:1]), .out(led[1]));
LFSR lfsr_3 (.clk(slow_clk), .reset(reset), .init(init[6:2]), .P(P[6:2]), .out(led[2]));
LFSR lfsr_4 (.clk(slow_clk), .reset(reset), .init(init[7:3]), .P(P[7:3]), .out(led[3]));
LFSR lfsr_5 (.clk(slow_clk), .reset(reset), .init(init[8:4]), .P(P[8:4]), .out(led[4]));
LFSR lfsr_6 (.clk(slow_clk), .reset(reset), .init(init[9:5]), .P(P[9:5]), .out(led[5]));
LFSR lfsr_7 (.clk(slow_clk), .reset(reset), .init(init[10:6]), .P(P[10:6]), .out(led[6]));

endmodule