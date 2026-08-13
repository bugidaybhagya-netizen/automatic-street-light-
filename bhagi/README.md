# Automatic Street Light Controller using Verilog

## Description
This project implements an automatic street light controller using Verilog HDL.

The controller uses a sensor input to detect daylight or darkness.

- Sensor = 0: Daylight → Street light OFF
- Sensor = 1: Darkness → Street light ON

## Files

- `automatic_street_light.v` - Main Verilog design
- `tb_automatic_street_light.v` - Testbench

## Simulation

The design can be simulated using:

- Icarus Verilog
- ModelSim
- QuestaSim
- Vivado

### Icarus Verilog

```bash
iverilog -o street_light_sim automatic_street_light.v tb_automatic_street_light.v
vvp street_light_sim