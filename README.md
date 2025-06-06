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
### Waveform 1
![ALU Waveform](./Waveform/3-bit_ALU_Waveform.png)

Below are the test cases for the 3-bit ALU and their corresponding output results, based on the waveform analysis:

| Case | A   | B   | Sel   | Result | Carry Out | Zero | Equal | Less Than | Greater Than |
|------|-----|-----|--------|--------|------------|------|--------|------------|---------------|
| 1    | 111 | 001 | 001    | 000    | 1          | 0    | 0      | 0          | 0             |
| 2    | 111 | 001 | 010    | 110    | 0          | 0    | 0      | 0          | 0             |
| 3    | 101 | 010 | 011    | 000    | 0          | 1    | 0      | 0          | 0             |
| 4    | 011 | 100 | 100    | 111    | 0          | 0    | 0      | 0          | 0             |
| 5    | 010 | 010 | 010    | 000    | 0          | 1    | 0      | 0          | 0             |
| 6    | 111 | 111 | 101    | 000    | 0          | 0    | 1      | 0          | 0             |
| 7    | 001 | 110 | 110    | 000    | 0          | 0    | 0      | 1          | 0             |
| 8    | 110 | 001 | 111    | 000    | 0          | 0    | 0      | 0          | 1             |


### Waveform 2
![ALU Waveform](./Waveform/3-bit-ALU-Waveform2.png)

Below are the test cases for the 3-bit ALU and their corresponding output results, based on the waveform analysis:

| Case | A   | B   | Sel   | Result | Carry Out | Zero | Equal | Less Than | Greater Than |
|------|-----|-----|--------|--------|------------|------|--------|------------|---------------|
| 1    | 111 | 001 | 010    | 001    | 1          | 0    | 0      | 0          | 0             |
| 2    | 110 | 001 | 010    | 101    | 0          | 0    | 0      | 0          | 0             |
| 3    | 101 | 010 | 011    | 000    | 0          | 1    | 0      | 0          | 0             |
| 4    | 011 | 100 | 100    | 111    | 0          | 0    | 0      | 0          | 0             |
| 5    | 101 | 101 | 010    | 000    | 0          | 1    | 0      | 0          | 0             |
| 6    | 100 | 100 | 101    | 000    | 0          | 0    | 1      | 0          | 0             |
| 7    | 001 | 010 | 110    | 000    | 0          | 0    | 0      | 1          | 0             |
| 8    | 111 | 110 | 111    | 000    | 0          | 0    | 0      | 0          | 1             |

