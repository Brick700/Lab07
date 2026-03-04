module adder(
    input A, B,
    output Y,
    output carry
);

    assign Y = A ^ B;
    assign carry = A & B;
    
endmodule