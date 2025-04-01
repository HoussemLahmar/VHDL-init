## Sample-VHDL-Projects-for-Artix-7
Includes 4-bit ALU, sequential design examples, and finite state machine examples. These are the compilation of my laboratory work from Digital Systems II course.

## Project Descriptions
### 1. Combinational Circuit
A combinational circuit with different concurrent signal assignment techniques. VDHL description of this truth table given below.

<p align="center"> 
  <img src="https://dl.dropboxusercontent.com/s/ksgjdm3oew0nklw/TruthTable.PNG">
</p>

### 2. 4-bit ALU
An Arithmetic and Logic Unit (ALU) is a combinational circuit that performs logical and arithmetic operations on a pair of n-bit operands (in this case, A[3:0] and B[3:0]). The operations performed by an ALU are controlled by a set of operation-select inputs. In this work, 4-bit ALU has 3 operation-select inputs, S[2:0]. Logical operations take place on the bits that comprise a value (known as bitwise operations), while arithmetic operations treat inputs and outputs as two’s complement integers.

The block diagram and the truth table for the ALU are shown below.

<p align="center"> 
  <img src="https://dl.dropboxusercontent.com/s/cl5yxw5zzegb3ys/ALU.png">
</p>

### 3. Sequential Design - Digital Clock
A 32-bit up_down counter with a synchronous reset and an enable input. In up mode, counter will count up to until "upperlimit" and then reset to zero. In down mode, counter will count down to zero and then reset to "upperlimit".

### 4. Sequential Design - Rotating Squares
This project implements the rotating squares on seven segments as shown in this figure:

<p align="center"> 
  <img src="https://dl.dropboxusercontent.com/s/tr9v1q015tcgth0/RotatingSquares.png">
</p>
