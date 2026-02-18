module ALU_3bit_top(SW, LEDR);
input  [9:0] SW;         // SW[9:0] switches
output [9:0] LEDR;      // LEDR[9:0] red LEDs

assign LEDR [9:8] = 2'b00;
//SW[8] not used   
    
ALU_3bit U1 (.a(SW[5:3]), 
             .b(SW[2:0]), 
             .sel(SW[9:7]), 
             .result(LEDR[2:0]), 
             .carry_out(LEDR[3]), 
             .zero(LEDR[4]), 
             .equal(LEDR[5]), 
             .less_than(LEDR[6]), 
             .greater_than(LEDR[7]));


endmodule
