`timescale 1ns / 100ps

module ALU_3bit_tb();

  // Testbench signals
  reg [2:0] a, b;
  reg [2:0] sel;
  
  wire [2:0] result;
  wire carry_out;
  wire zero;
  wire equal;
  wire less_than;
  wire greater_than;


  // Instantiate the ALU module
  ALU_3bit DUT (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result),
    .carry_out(carry_out),
    .zero(zero),
    .equal(equal),
    .less_than(less_than),
    .greater_than(greater_than)
  );

// Test procedure
initial begin
    
// Test case 1: Addition (A + B)
a = 3'b111; b = 3'b001; sel = 3'b001;   //Expected result: result:000, carry_out: 1
#10;
 
// Test case 2: Subtraction (A - B)
a = 3'b111; b = 3'b001; sel = 3'b010;  //Expected result: 110
#10;
    
// Test case 3: AND operation(result should be zero, zero flag should go high)
a = 3'b101; b = 3'b010; sel = 3'b011;  //Expected result: 000
#10;
    
// Test case 4: OR operation
a = 3'b011; b = 3'b100; sel = 3'b100; //Expected result: 111
#10;
    
// Test case 5: Zero detection (A - A should be zero)
a = 3'b010; b = 3'b010; sel = 3'b010; //Expected result: 000
#10;
    
// Test case 6: Equal comparison
a = 3'b111; b = 3'b111; sel = 3'b101; 
#10;
    
// Test case 7: Less than comparison
a = 3'b001; b = 3'b110; sel = 3'b110;
#10;
    
// Test case 8: Greater than comparison
a = 3'b110; b = 3'b001; sel = 3'b111;
#10;
    

//Test case 9: XOR operation, result should be zero, zergo flag should go high
a = 3'b100; b = 3'b100; sel = 3'b000;
#10;
 

//Test case 10: XOR operation, result should be 111
a = 3'b101; b = 3'b010; sel = 3'b000;
#10; 

//Test case 11: When all inputs are zero, the zero flag will go high
a = 3'b000; b = 3'b000; sel =3'b000;
#10;


// Finish simulation
$finish;

end
endmodule
