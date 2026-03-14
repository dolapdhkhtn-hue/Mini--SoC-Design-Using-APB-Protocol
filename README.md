# Mini SoC Design Using APB Protocol

This project implements a simple **Mini System-on-Chip (SoC)** using **Verilog HDL**.
The system integrates a basic CPU, UART communication modules, and supporting components to demonstrate a simple embedded system architecture.

## Project Overview

The design allows data communication through **UART**, which is processed by a simple CPU and arithmetic logic unit (ALU). The result can then be transmitted back through the UART interface.

This project demonstrates fundamental concepts in **digital design**, **CPU architecture**, and **FPGA-based system integration**.

## Features

* Simple CPU architecture
* UART communication (RX/TX)
* Arithmetic Logic Unit (ALU)
* Register File
* Control Unit
* ROM for instruction storage
* FPGA constraint configuration
* Testbench for simulation

## Project Structure

```
mini-soc-apb
│
├── cpu
│   ├── program_counter.v
│   └── control_unit.v
│   └── alu.v
│   └── rom.v
│   └── register_File.v
├── uart
│   ├── uart_rx.v
│   └── uart_tx.v
│
├── top
│   └── top_soc.v
│
├── tb
│   └── test_bench_soc.v
│
├── constraints
│   └── constraint.xdc
│
└── README.md
```

## System Architecture

UART_RX → CPU → ALU → UART_TX

1. Data is received through the **UART RX module**
2. The **CPU** processes the data
3. The **ALU** performs arithmetic operations
4. The result is transmitted back via **UART TX**

## Tools Used

* Verilog HDL
* FPGA Design Tools (e.g., Vivado)
* Simulation Tools (e.g., ModelSim)

## Learning Objectives

* Understand basic CPU design
* Implement UART communication in hardware
* Practice modular RTL design
* Learn FPGA-based system integration

## Author

Do Lap
RTL / FPGA Design

