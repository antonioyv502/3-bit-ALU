module ALU_top(
    input [9:0] SW,         // SW[9:0] switches
    output [9:0] LEDR       // LEDR[9:0] red LEDs
);

    // Assign switch inputs to ALU inputs
    wire [2:0] A    = SW[2:0];    // SW[2:0] = A
    wire [2:0] B    = SW[5:3];    // SW[5:3] = B
    wire [2:0] sel  = SW[8:6];    // SW[8:6] = select signal
    // SW[9] can be used for future use or enable

    // ALU outputs
    wire [2:0] result;
    wire carry_out;
    wire zero;
    wire equal;
    wire less_than;
    wire greater_than;

    // Instantiate the 3-bit ALU
    ALU_3bit alu_3 (
        .A(A),
        .B(B),
        .sel(sel),
        .result(result),
        .carry_out(carry_out),
        .zero(zero),
        .equal(equal),
        .less_than(less_than),
        .greater_than(greater_than)
    );

    // Display outputs on LEDs
    assign LEDR[2:0] = result;         // Result (3 bits)
    assign LEDR[3]   = carry_out;      // Carry/borrow flag
    assign LEDR[4]   = zero;           // Zero flag
    assign LEDR[5]   = equal;          // Equality flag
    assign LEDR[6]   = less_than;      // Less than flag
    assign LEDR[7]   = greater_than;   // Greater than flag
    // LEDR[8] and LEDR[9] are free for debugging or expansion

endmodule
