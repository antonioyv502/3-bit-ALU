module ALU_3bit_top(SW, LEDR);
    input  [9:0] SW;         // SW[9:0] switches
    output [9:0] LEDR;      // LEDR[9:0] red LEDs

ALU_3bit U1 (.a(SW[2:0]), .b(SW[5:3]), .sel(SW[8:6]), .result(LEDR[2:0]), .carry_out(LEDR[3]), 
             .zero(LEDR[4]), .equal(LEDR[5]), .less_than(LEDR[6]), .greater_than(LEDR[7]));


endmodule
