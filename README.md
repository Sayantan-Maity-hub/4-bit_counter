# 4-Bit Synchronous Counter in Verilog

This project implements a 4-bit synchronous up-counter using Verilog. The counter has:

- 4-bit output (0–15)
- Enable input
- Asynchronous reset

## Files

- `src/counter4bit.v` : Verilog module for the counter
- `tb/counter4bit_tb.v` : Testbench for simulation
- `.gitignore` : Ignored files

## Simulation

Run the testbench in any Verilog simulator (Icarus Verilog, Vivado, ModelSim):

```bash
iverilog -o counter_tb tb/counter4bit_tb.v src/counter4bit.v
vvp counter_tb