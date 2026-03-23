# 4-Bit NRZ/NRZI Encoder-Decoder

A digital logic implementation of a 4-bit Non-Return-to-Zero (NRZ) and NRZ-Inverted (NRZI) encoder and decoder, developed as a Xilinx Vivado project.

---

## Technical Overview

This project focuses on the hardware-level implementation of line coding techniques used in serial data transmission. The primary goal is to transform 4-bit parallel data into an encoded serial format and reconstruct it back through a decoding stage.

### Functional Logic

* **NRZ Encoding**: Maps binary '1' to a high logic level and '0' to a low logic level.
* **NRZI Encoding**: A transition (high-to-low or low-to-high) represents a logic '0', while no transition represents a logic '1' (or vice versa, depending on the specific standard used). This is critical for clock recovery in protocols like USB.
* **4-Bit Data Path**: Processes nibble-sized data for efficient simulation and verification of state transitions.

---

## Design & Tools

* **Hardware Description Language**: SystemVerilog (Core logic found in `.srcs`).
* **Development Environment**: Xilinx Vivado Design Suite.
* **Simulation**: Xilinx XSim (Functional verification via testbench).

### Project Structure

| Directory / File | Description |
| :--- | :--- |
| `nrzi4.xpr` | Main Xilinx Vivado project file. |
| `nrzi4.srcs/` | Source files including SystemVerilog modules and constraints. |
| `nrzi4.sim/` | Simulation sets and testbench configurations. |
| `nrzi4.hw/` | Hardware manager configurations. |

---

## Getting Started

### Prerequisites
* Xilinx Vivado (2020.1 or newer recommended).

### Opening the Project
1. Clone the repository:
   ```bash
   git clone [https://github.com/KusanagiBoi/4_bit_nrz_encoder.git](https://github.com/KusanagiBoi/4_bit_nrz_encoder.git)

2. Launch Vivado.

3. Select Open Project and navigate to the cloned directory.

4. Open nrzi4.xpr.

### Running Simulation
1. In the Flow Navigator, click on Simulation > Run Simulation.

2. Select Run Behavioral Simulation.

3. Analyze the waveforms in the simulation window to verify the encoder-decoder logic.

### License
This project is licensed under the MIT License - see the LICENSE file for details.
