# UART ASIC — Full RTL to GDS II Implementation

**Technology:** SkyWater Sky130A 130 nm  
**Tools:** Icarus Verilog · Verilator · Yosys · OpenSTA · OpenLane · OpenROAD · Magic · Netgen · KLayout  
**Internship:** NIELIT Noida — RTL to GDS II Program

---

## Project Overview

Full-duplex UART (Universal Asynchronous Receiver-Transmitter) implemented through
the complete ASIC physical design flow — from behavioural Verilog RTL to a
manufacturable GDS II layout — using 100% open-source EDA tools.

---

## Key Results

| Metric                  | Value                     |
|-------------------------|---------------------------|
| Technology Node         | SkyWater Sky130A 130 nm   |
| Die Area                | 94 µm × 92 µm             |
| Target Clock            | 40 MHz (25 ns period)     |
| RTL Source Files        | 13 Verilog modules        |
| OpenLane Steps          | 48 / 48 complete          |
| Magic DRC Violations    | 0                         |
| KLayout DRC Violations  | 0                         |
| LVS Result              | Circuits match uniquely   |
| Setup Timing Violations | 0                         |
| Hold Timing Violations  | 0                         |
| Bugs Fixed              | 9 (including 4 tapeout blockers) |

---
```
## UART Architecture
UART (top)
├── BAUD_RATE_GENERATOR.v   — 12-bit counter pulse engine
├── RX_SYNC.v               — 2-flip-flop input synchroniser (metastability)
├── TXTOP.v (Transmitter)
│   ├── FSMTX.v             — 5-state Mealy FSM
│   ├── Serializer.v        — Parallel-to-serial (LSB first)
│   ├── ParityCalculator.v  — XOR/XNOR parity generator
│   └── MUX.v               — State-driven output mux
└── RXTOP.v (Receiver)
├── FSMRX.v             — 5-state FSM with 16x oversampling
├── Deserializer.v      — Serial-to-parallel reconstruction
└── ParityCheck.v       — XOR error detector
```
---

## RTL to GDS II Flow
```
13 Verilog Files
│
▼
Simulation      →  Icarus Verilog + GTKWave   →  3/3 tests PASS
│
▼
Lint            →  Verilator                   →  0 warnings
│
▼
Synthesis       →  Yosys + Sky130A .lib        →  uart_netlist.v
│
▼
Timing          →  OpenSTA                     →  WNS=0, TNS=0
│
▼
Physical Design →  OpenLane (48 steps)         →  UART.gds
│
▼
Verification    →  Magic + Netgen + KLayout    →  DRC=0, LVS=pass
```
---

## Bugs Fixed
```

| # | Severity | File | Bug | Fix |
|---|----------|------|-----|-----|
| 1 | Critical | UART.v | `bclk_wire` undeclared | Added wire declaration |
| 2 | Critical | TXTOP.v | `parity_mux_wire` undeclared | Added wire declaration |
| 3 | Critical | FSMRX.v | Latch inferred on `Next` | Added `Next=DATA` + default |
| 4 | Critical | UART.v | OVERSAMPLING+1 baud error | Corrected to OVERSAMPLING |
| 5 | Moderate | FSMTX.v | `empty` port floating | Removed unused port |
| 6 | Moderate | FSM*.v | No default `Next=Current` | Added default assignment |
| 7 | Moderate | UART.v | No RX input synchroniser | Added RX_SYNC.v module |
| 8 | TB only | UART_TB.v | Wrong instance reference | Fixed typo |
| 9 | TB only | UART_TB.v | 32-bit div port mismatch | Changed to 12-bit |
```
---

## Repository Structure
```
uart-rtl-to-gdsii/
├── rtl/              — 13 fixed Verilog RTL modules
├── tb/               — Dual-clock CDC testbench
├── synth/            — Yosys synthesis script + gate-level netlist
├── sta/              — OpenSTA SDC constraints + timing scripts
├── openlane/         — config.json for OpenLane flow
├── reports/          — Synthesis, timing, DRC, LVS reports
└── gds/              — Final GDS II layout file
```
---

## How to Clone

```bash
# 1. Clone the repo
git clone https://github.com/BANSHIDHARSAHOO/UART_ASIC_IMPLEMENTATION.git
cd UART_ASIC_IMPLEMENTATION

# 2. Simulate
mkdir -p sim
iverilog -g2005 -Wall rtl/*.v tb/UART_TB.v -o sim/uart_sim.out
vvp sim/uart_sim.out

# 3. Synthesise
cd synth && yosys synth_uart.ys

# 4. View Chip Layout
cd ..
klayout gds/UART.gds
---

## Tools and Versions

| Tool | Version |
|------|---------|
| Icarus Verilog | 12.0 |
| Verilator | 5.038 |
| Yosys | 0.33 |
| OpenROAD | 2602-1311 |
| OpenSTA | 3.1.0 |
| Magic | 8.3.644 |
| Netgen | 6.2.2401 |
| KLayout | 0.28.16 |
| OpenLane | 1.x |
| PDK | Sky130A |

---
