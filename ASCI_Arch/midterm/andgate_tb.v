`timescale 1ns/1ps

module andgate_tb();

reg a, b;
wire Q;

andgate uut(
    .a(a),
    .b(b),
    .Q(Q)
);

initial begin 
a = 0; b = 0; #100;
a = 0; b = 1; #100;
a = 1; b = 0; #100;
a = 1; b = 1; #100;
end
endmodule