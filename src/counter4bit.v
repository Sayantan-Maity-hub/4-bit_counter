// 4-bit synchronous up-counter
module counter4bit (
    input wire clk,       // Clock input
    input wire rst,       // Asynchronous reset
    input wire en,        // Enable
    output reg [3:0] q    // 4-bit output
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;         // Reset counter to 0
    else if (en)
        q <= q + 1;           // Increment counter
end

endmodule