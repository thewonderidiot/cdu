# CDU Tools and Simulation

This repository contains documentation for, simulations of, and boards for powering and interfacing with the Coupling Data Unit (CDU) from Apollo spacecraft. The CDU performed most analog-to-digital and digital-to-analog conversions for the Apollo Guidance Computer, including resolver-to-digital conversions for the IMU, Command Module optics, and Lunar Module Rendezvous Radar. A breakdown in these conversions was the cause of the 1201 and 1202 program alarms during the Apollo 11 landing. The goal of this project is to replicate that condition on an original CDU, and explain exactly what happened.

## Hardware

<img width="1436" height="512" alt="image" src="https://github.com/user-attachments/assets/dfb1a794-44ed-45d8-8810-47a2c0a0d9fd" />

### Connector Plate

### Resolver Adapter

### AGC Simulator

### Power Supply

## Simulation

The `sim` folder contains Verilog models of a single channel of the CDU. Digital modules are represented with gate-accurate logical implementations; analog modules are mathematically modeled. Gains for the analog modules have been taken from the appropriate procurement specifications, for maximum accuracy.

The simulator requires [Icarus Verilog](https://github.com/steveicarus/iverilog). It can be built and run with:
```bash
make run
```
from the `sim` directory. Simulation results can be viewed using [GTKWave](https://gtkwave.sourceforge.net/), with
```
gtkwave dump.fst cdu.gtkw
```

<img width="1513" height="453" alt="image" src="https://github.com/user-attachments/assets/84e93af1-fbde-4b89-8c28-ed61b42662ac" />


## Documentation

The `docs` folder contains stitched drawings and reassembled procurement specifications, pieced together from [invidividual aperture card scans](https://ibiblio.org/apollo/ElectroMechanical.html#Accessing_the_Available_GN_Engineering) from the National Archives at Fort Worth.
<img width="2306" height="1152" alt="image" src="https://github.com/user-attachments/assets/2728dfa0-3595-4aec-95e7-27bb1f18c957" />
