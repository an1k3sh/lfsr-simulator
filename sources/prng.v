`timescale 1ns/1ps

module LFSR (
    input wire clk,
    input wire reset,
    input wire[4:0] init,
    input wire[4:0] P,
    
    output wire out
);

reg[4:0] states;
reg[4:0] internalP;
wire[4:0] xor_in;
wire next_in;

assign xor_in = states & internalP;
assign out = states[0];
assign next_in = ^xor_in;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        states <= init;
        internalP <= P;
    end else begin
        states <= {next_in, states[4:1]};
    end
end

endmodule