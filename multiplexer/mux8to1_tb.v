`timescale 1ns/1ps

module mux8to1_tb;

reg [7:0] d;
reg [2:0] sel;
wire y;

// Instantiate the DUT
mux8to1 uut (
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
    $display("--------------------------------");
    $display(" Time |   Data    | Sel | Y");
    $display("--------------------------------");

    // Test Pattern
    d = 8'b10101100;

    sel = 3'b000; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    sel = 3'b001; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    sel = 3'b010; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    sel = 3'b011; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    sel = 3'b100; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    sel = 3'b101; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    sel = 3'b110; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    sel = 3'b111; #10;
    $display("%4t | %b | %b | %b", $time, d, sel, y);

    $display("--------------------------------");
    $finish;
end

endmodule