module full_adder(
    input A, B, Cin,
    output Y,
    output Cout
);

    assign Y = Cin ^ A ^ B;

    assign Cout = (Cin & B) | (Cin & A) | (A & B);

endmodule