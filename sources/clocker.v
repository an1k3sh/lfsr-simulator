`timescale 1ns/1ps

module slow_clocker(
    input wire clk,
    input wire reset,
    output reg slow_clk
    );

reg [26:0] counter = 0;

always @(posedge clk) begin
    if (reset) begin
        slow_clk <= 1'b0;
        counter <= 0;
    end
    if (counter == 27'd49_999_999) begin
        slow_clk <= ~slow_clk;
        counter <= 0;
    end else begin
        counter <= counter + 1;
    end
end
endmodule
