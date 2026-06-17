# Arithmetic Logic Unit (ALU) – Verilog Implementation
# Overview

An Arithmetic Logic Unit (ALU) is a fundamental component of digital systems and processors. It performs arithmetic and logical operations on binary inputs.

This project implements a 4-bit ALU in Verilog, capable of performing multiple operations such as addition, AND, OR, and XOR.

# Features
4-bit input operands (A, B)
Supports multiple operations:
Addition
Bitwise AND
Bitwise OR
Bitwise XOR
Carry-out generation for arithmetic operation
Modular and easy-to-understand design

# ALU Operations Table
Select Line (sel)	Operation	Description
00	               Addition 	A + B
01	                 AND	    A & B
10	                 OR	        `A
11	                 XOR	    A ^ B

#  How It Works
Inputs A and B are fed into:
Arithmetic unit (adder)
Logic units (AND, OR, XOR)
All operations are computed in parallel
A multiplexer (via case statement) selects the final result based on sel
Carry-out is produced only during addition

# Applications
CPUs and microprocessors
Embedded systems
Digital signal processing
FPGA/ASIC designs
