# FPGA-Implementation-of-SPI-Protocol
This project implements the SPI (Serial Peripheral Interface) protocol using Verilog on the Microsemi SmartFusion2 M2S050 FPGA. The design was created and tested using the Libero SoC Design Suite. The SPI module was verified by interfacing it with an ADXL345 accelerometer, and the results were analyzed on a digital oscilloscope.

---

## Introduction
The Serial Peripheral Interface (SPI) is a synchronous communication protocol widely used for short-distance communication in embedded systems. This project implements a full-duplex SPI controller capable of interfacing with SPI-compliant devices.

---

## Features
- SPI master implementation in Verilog
- Verified with ADXL345 accelerometer
- Real-time data visualization on a digital oscilloscope

---

## Hardware and Software Requirements

### Hardware
- Microsemi SmartFusion2 M2S050 FPGA Development Board
- ADXL345 Accelerometer
- Digital Oscilloscope
- Jumper Wires

### Software
- Libero SoC Design Suite
- ModelSim Alter for simulation

---

## FPGA Connections
The following table lists the pin connections for the SPI interface on the M2S050 FPGA:

| Signal      | FPGA Pin |
|-------------|----------|
| `clock_in`  | C4       |
| `cs`        | N16      |
| `mosi`      | C3       |
| `rs`        | B1       |
| `miso`      | P18      |

---
