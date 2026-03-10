module twos_compliment (
    input [7:0] A,
    output [7:0] Y
);

//~A = invA
wire [7:0] invA;
wire a0, a1, a2, a3, a4, a5, a6, a7;

assign invA = ~A;

full_adder fc0(
    .A(invA[0]),
    .B(1'b0), 
    .Cin(1'b1), //Add 1
    .Y(Y[0]),
    .Cout(a0)
);
full_adder fc1(
    .A(invA[1]),
    .B(1'b0), 
    .Cin(a0), 
    .Y(Y[1]),
    .Cout(a1)
);
full_adder fc2(
    .A(invA[2]),
    .B(1'b0), 
    .Cin(a1), 
    .Y(Y[2]),
    .Cout(a2)
);
full_adder fc3(
    .A(invA[3]),
    .B(1'b0), 
    .Cin(a2), 
    .Y(Y[3]),
    .Cout(a3)
);
full_adder fc4(
    .A(invA[4]),
    .B(1'b0), 
    .Cin(a3), 
    .Y(Y[4]),
    .Cout(a4)
);
full_adder fc5(
    .A(invA[5]),
    .B(1'b0), 
    .Cin(a4), 
    .Y(Y[5]),
    .Cout(a5)
);
full_adder fc6(
    .A(invA[6]),
    .B(1'b0), 
    .Cin(a5), 
    .Y(Y[6]),
    .Cout(a6)
);
full_adder fc7(
    .A(invA[7]),
    .B(1'b0), 
    .Cin(a6), 
    .Y(Y[7]),
    .Cout(a7)
);

endmodule