module ALU_3bit(A, B, sel, result, carry_out, zero, equal, less_than, greater_than);
  
  input [2:0] A;             //3 bit input A
  input [2:0] B;             // 3 bit input B
  input [2:0] sel;           //select the operator 
  output reg [2:0] result;   //3 bit output 
  output reg carry_out;      //carryout for addition and borrow for subtraction(status flag)
  output reg zero;           //detects when an operation results in zero(status flag)
  output reg equal;          //equal for comparing values
  output reg less_than;      //less_than for comparing values
  output reg greater_than;   //greater_than for comparing values

  parameter [2:0]XOR = 3'b000;
  parameter [2:0]ADD = 3'b001;
  parameter [2:0]SUB = 3'b010;
  parameter [2:0]AND = 3'b011;
  parameter [2:0]OR = 3'b100;
  parameter [2:0]EQ = 3'b101;
  parameter [2:0]LT = 3'b110;
  parameter [2:0]GT = 3'b111;
 
  always @(*) begin
   carry_out = 0;      //initializing carry_out to 0
   result = 0;         //initializing result to 0
   zero = 0;           //initializing zero to 0
   equal = 0;          //initializing equal to 0
   less_than = 0;      //initializing less_than to 0
   greater_than = 0;   //initializing greater_than to 0
   
    case (sel)

	XOR: begin
		result = A ^ B;  //bitwsie XOR operation
	end
		
    ADD: begin 
      {carry_out, result} = A + B; //carryout if result exceeds 3 bits
    end
     
    SUB: begin
      result = A - B;
      carry_out = (A < B) ? 1 : 0; //carryout acts as borrowout
    end
    
    AND: begin
      result = A & B;         //bitwise AND operation
    end
    
    OR: begin 
      result = A | B;  //bitwise OR operation
    end
	
    EQ: begin 
      equal = (A == B) ? 1 : 0;  //equal output goes high if A and B are equal, else 0
    
    end
     
    LT: begin 
      less_than = (A < B) ? 1: 0; //less_than output goes high if A is less than B, else 0
    end 
     
     GT: begin 
       greater_than = (A > B) ? 1 : 0;  //greater_than output goes high if A is greater than B, else 0
     end 
     
    default: begin
      result = 3'b000; //3 bit zero
      carry_out = 0;
    end
  endcase

  
	  if ((result == 3'b000) && (carry_out == 0) && (sel != EQ) && (sel != LT) && (sel != GT)) // Result only goes high for arithemtic operations and logical operations
        zero = 1;
      
end
endmodule
