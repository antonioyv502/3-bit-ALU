# 3-bit Arithmetic Logic Unit (ALU)

## Description
This project implements a 3-bit Arithmetic Logic Unit (ALU) using Verilog. The ALU performs arithmetic and logical operations determined by a 3-bit select input and sets output flags such as carry out and zero. The design was verified using a testbench to simulate and validate the ALU’s functionality, achieving 100% correctness across 8 different test cases.

## 🔧 Features
- 3-bit inputs and outputs
- Supports addition, subtraction, AND, OR, equal, less than, and greater than operations
- Output flags: Carry out, Zero,

## Operation Select Lines

| Select (3-bit) | Operation              |
|----------------|------------------------|
| 000            | NOT USED               |
| 001            | ADD                    |
| 010            | SUBTRACT               |
| 011            | BITWISE AND            |
| 100            | BITWISE OR             |
| 101            | EQUAL COMPARISON       |
| 110            | LESS THAN COMPARISON   |
| 111            | GREATER THAN COMPARISON|

## 📸 Simulation Waveform

Below is a waveform showing the ALU performing various operations and setting ouput flags:

![ALU Waveform](./Waveform/3-bit_ALU_Waveform.png)
# Case 1 | A=111, B=010, sel=001 | result=001, carry_out=1, zero=0, equal=0, less_than=0, greater_than=0
# Case 2 | A=111, B=001, sel=010 | result=110, carry_out=0, zero=0, equal=0, less_than=0, greater_than=0
# Case 3 | A=101, B=010, sel=011 | result=000, carry_out=0, zero=1, equal=0, less_than=0, greater_than=0
# Case 4 | A=011, B=100, sel=100 | result=111, carry_out=0, zero=0, equal=0, less_than=0, greater_than=0
# Case 5 | A=010, B=010, sel=010 | result=000, carry_out=0, zero=1, equal=0, less_than=0, greater_than=0
# Case 6 | A=111, B=111, sel=101 | result=000, carry_out=0, zero=0, equal=1, less_than=0, greater_than=0
# Case 7 | A=001, B=110, sel=110 | result=000, carry_out=0, zero=0, equal=0, less_than=1, greater_than=0
# Case 8 | A=110, B=001, sel=111 | result=000, carry_out=0, zero=0, equal=0, less_than=0, greater_than=1
