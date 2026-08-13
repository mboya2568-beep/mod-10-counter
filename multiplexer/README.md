# 8:1 Multiplexer using Verilog

## Overview
This project implements an **8:1 Multiplexer (MUX)** in Verilog HDL. An 8:1 multiplexer selects one of eight input signals based on a 3-bit select line and forwards it to the output.

## Truth Table

| Select (`sel`) | Output (`y`) |
|----------------|--------------|
| 000 | d[0] |
| 001 | d[1] |
| 010 | d[2] |
| 011 | d[3] |
| 100 | d[4] |
| 101 | d[5] |
| 110 | d[6] |
| 111 | d[7] |

## Files

```
mux8to1.v
mux8to1_tb.v
README.md
```

## Simulation

Compile:

```bash
iverilog -o mux mux8to1.v mux8to1_tb.v
```

Run:

```bash
vvp mux
```

## Applications

- Data routing
- Bus switching
- Processor datapath
- Communication systems
- Digital signal processing

