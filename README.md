# 16:1 Multiplexer 

This project involved implementing the mechanism of a vending machine using verilog. 
It is a Combinational circuit program implemneted using Vivado-Xylinx on Basys 3 artix-7 FPGA trainer board

#### Overview

In the field of digital electronics, Multiplexer (MUX) is a fundamental component that
allows a single output line to select one of several input lines. A 16:1 MUX is a type of
digital circuit that has 16 input lines and one output line. It is used to select a single
output from 16 possible inputs based on a binary control signal. In this project, we will
design and implement a 16:1 MUX using an FPGA (Field-Programmable Gate Array).
FPGAs are programmable integrated circuits that allow designers to create custom
digital circuits without the need for physical hardware changes

#### Design methodolgies

3 modeling techniques have been used collectively for this project. Every one of them is as efficient as others.

Data flow modeling is a high-level abstraction technique that focuses on the flow of data
through a circuit. In this approach, the circuit is modeled as a set of interconnected
blocks that process input data and produce output data. The focus is on describing how
the data flows through the circuit and how it is processed. This type of modeling is
suitable for complex designs where the focus is on functionality rather than
implementation details.

Behavioral modeling, on the other hand, describes the behavior of the circuit in terms of
the input and output signals without specifying the implementation details. It is a higherlevel abstraction technique that focuses on the functionality of the circuit. In this
approach, the circuit is modeled as a set of processes that describe how the input signals
are processed to generate output signals. This type of modeling is suitable for less
complex designs where the focus is on functionality rather than implementation details.

Gate-level modeling is the lowest level of abstraction, where the circuit is described in
terms of individual logic gates and their interconnections. This type of modeling is used
when precise control over the circuit implementation is required. It involves describing
the circuit in terms of logic gates and interconnections between them. This type of
modeling is suitable for designs where the focus is on implementation details and
precise timing.

A 16:1 MUX is a digital circuit that has 16 input lines and one output line. The circuit
selects one of the 16 input lines based on a binary control signal and routes it to the
output. The working of a 16:1 MUX can be explained using the following steps:
The 16 input lines are numbered from 0 to 15. The binary control signal consists of four
bits, which can represent any number from 0 to 15. The control signal is decoded by a 4-
to-16 decoder, which produces 16 output signals corresponding to each input line. The
decoder enables one and only one of the 16 output signals based on the binary value of
the control signal.

The 16 input lines are connected to the input terminals of the 16 AND gates, and the
output signals from the decoder are connected to the input terminals of the 16 OR gates.
Each AND gate produces a high output signal only if both its input signals are high.
Therefore, only the input line corresponding to the enabled output signal from the
decoder produces a high output signal, and all other input lines produce a low output
signal. The 16 OR gates produce a high output signal if any of their input signals are
high. Therefore, the high output signal from the selected AND gate is routed to the
output terminal of the MUX, and all other output signals are low.

![image](https://github.com/Dhruva-Sahani/16-1MUX/assets/92433769/ba21b0be-beab-4402-9cd4-edcc52a6e7ae)
