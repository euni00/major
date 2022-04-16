`timescale 1ns/1ps

module fa_tb();

reg a, b, cin;
wire cout, s;

fa uut(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .s(s)
);

initial begin
    a = 0;
    b = 0;
    cin = 0;
    #1000 $stop;
end

always #200 a = ~a;
always #100 b = ~b;
always #50 cin = ~cin;

endmodule