`timescale 1ns / 1ps

module prng_tb;
    reg clk;
    reg reset;
    wire slow_clk;
    wire[6:0] led;
    
    main main(.clk(clk), .reset(reset), .slow_clk(slow_clk), .led(led));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        #20 reset = 0;
        #200 $finish;
    end
      

endmodule
