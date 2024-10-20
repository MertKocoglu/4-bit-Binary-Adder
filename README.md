Modules

1. Full Adder
The full_adder module performs the addition of three binary inputs: two significant bits (in1 and in2) and a carry-in bit (cin). It outputs a single sum bit and a carry-out bit (cout).

Inputs:

in1: First binary input (1 bit)
in2: Second binary input (1 bit)
cin: Carry-in (1 bit)
Outputs:

sum: The result of the addition (1 bit)
cout: The carry-out (1 bit)
Functionality:

Computes the sum using XOR gates for the sum output and AND gates to determine the carry-out.
2. 4-Bit Binary Adder
The BA_4bit module utilizes four instances of the full_adder to add two 4-bit binary numbers (a and b). It provides a 4-bit sum output and a carry-out.

Inputs:

a: First 4-bit binary input
b: Second 4-bit binary input
Outputs:

sum: The 4-bit result of the addition
cout: The carry-out from the most significant bit addition
Functionality:

Connects each full adder in a cascading manner, passing the carry from one adder to the next to account for potential carries across multiple bits.
Usage
To simulate and test these modules, include them in a Verilog testbench. The modules can be synthesized in FPGA or ASIC designs for practical applications in digital electronics.

License
This project is open source. Feel free to use, modify, and distribute the code.
