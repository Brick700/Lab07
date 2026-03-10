module ones_compliment(
    input [3:0] A, // Four bits of A: 3, 2, 1, 0
    input [3:0] B, // Same for B
    output [3:0] Y // and for Y
);

// A + B
wire [3:0] AplusB;

// Carry for A + B
 wire c0, c1, c2;

// Carry for A + B + around
wire second_carry;

full_adder fa0(
    .A(A[0]),
    .B(B[0]),
    .Cin(1'b0),
    .Y(AplusB[0]),
    .Cout(c0)
);
full_adder fa1(
    .A(A[1]),
    .B(B[1]),
    .Cin(c0),
    .Y(AplusB[1]),
    .Cout(c1)
);
full_adder fa2(
    .A(A[2]),
    .B(B[2]),
    .Cin(c1),
    .Y(AplusB[2]),
    .Cout(c2)
);
full_adder fa3(
    .A(A[3]),
    .B(B[3]),
    .Cin(c2),
    .Y(AplusB[3]),
    .Cout(second_carry)
);

//A + B With Carryout

wire d0, d1, d2, d3;


full_adder fb0(
    .A(AplusB[0]),
    .B(1'b0),
    .Cin(second_carry), //Carryout from pass 1
    .Y(Y[0]),
    .Cout(d0)
);
full_adder fb1(
    .A(AplusB[1]),
    .B(1'b0),
    .Cin(d0),
    .Y(Y[1]),
    .Cout(d1)
);
full_adder fb2(
    .A(AplusB[2]),
    .B(1'b0),
    .Cin(d1),
    .Y(Y[2]),
    .Cout(d2)
);
full_adder fb3(
    .A(AplusB[3]),
    .B(1'b0),
    .Cin(d2),
    .Y(Y[3]),
    .Cout(d3)
);

endmodule