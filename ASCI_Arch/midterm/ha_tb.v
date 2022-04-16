`timescale 1ns/1ps

module ha_tb();

reg a, b;
wire s, c;

ha uut(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
);

initial begin
a = 0; 
b = 0;
#1000 $stop;
end

always #50 a = ~a;
always #100 b = ~b;
endmodule
