`timescale 1ns/1ps

module counter4bit_tb;

reg clk;
reg rst;
reg en;
wire [3:0] q;

// Instantiate the counter
counter4bit uut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .q(q)
);

// Clock generation
initial clk = 0;
always #5 clk = ~clk;  // 100 MHz equivalent for simulation

// Test procedure
initial begin
    // Initialize inputs
    rst = 1;
    en = 0;
    #10;
    
    rst = 0;
    en = 1;  // Enable counter
    
    // Let counter run for some cycles
    #100;
    
    $finish;  // End simulation
end

// Monitor counter output
initial begin
    $monitor("Time=%0t | q=%b", $time, q);
end

endmodule