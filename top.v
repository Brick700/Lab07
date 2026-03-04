module top (
     input [7:0] sw,
    output [5:0] led
);

wire carry_bit;

light stair_light_insta(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
);

adder one_bit_insta (
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
);

full_adder LSB(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(1'b0), // Since no carry it would be 0
    .Y(led[3]),
    .Cout(carry_bit) //Will be carried out to next adder
);

full_adder MSB(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(carry_bit), // Carried from previous adder
    .Y(led[4]),
    .Cout(led[5])
);

endmodule