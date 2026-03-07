# CDU Tools and Simulation

This repository contains documentation for, simulations of, and boards for powering and interfacing with the Coupling Data Unit (CDU) from Apollo spacecraft. The CDU performed most analog-to-digital and digital-to-analog conversions for the Apollo Guidance Computer, including resolver-to-digital conversions for the IMU, Command Module optics, and Lunar Module Rendezvous Radar. A breakdown in these conversions was the cause of the 1201 and 1202 program alarms during the Apollo 11 landing. The goal of this project is to replicate that condition on an original CDU, and explain exactly what happened.

## Hardware

<img width="1436" height="512" alt="image" src="https://github.com/user-attachments/assets/dfb1a794-44ed-45d8-8810-47a2c0a0d9fd" />

### Connector Plate

<img width="1178" height="832" alt="image" src="https://github.com/user-attachments/assets/fee5a837-d1a2-4c4b-9617-24f24869a177" />


The main connector of the CDU consists of 300 Malco Mini-Wasp contacts -- not easy to interface with. The connector plate uses Samtec replica contacts to break this connector out into several D-Sub connectors and a bank of test points, enabling much easier interfacing. Each of the five dual resolvers, the Apollo Guidance Computer (AGC), and the Power & Servo Assembly (PSA) get their own dedicated connector. The remaining spacecraft-interfacing signals are placed on one additional connector.

### Resolver Adapter

<img width="1302" height="915" alt="image" src="https://github.com/user-attachments/assets/5c3afdaf-6d0a-4db3-8a9f-e0808f5319b2" />

The resolver used for Apollo is unfortunately essentially unobtainable. It was a dual-speed 1x / 16x resolver driven by 28Vrms at 800Hz. The 1X outputs had amplitudes of approximately 26Vrms, and the 16X outputs had amplitudes of around 5Vrms. Lacking such a resolver, I've cobbled together substitues using modern single-speed resolvers geared together with a 16:1 planetary gearbox, at the cost of some backlash between the speeds. The resolver adapter board connects these two single-speed resolvers to the dual-resolver connectors of the connector plate. It contains compensation capacitors for each resolver, as well as series potentiometers on the reference inputs to fine-tune output amplitudes.

### AGC Simulator

<img width="1081" height="729" alt="image" src="https://github.com/user-attachments/assets/873bcd01-e9ad-4095-949e-b211bed80556" />


The AGC Simulator contains headers for a [cmod_agc], and adds to it all of the [I/O circuits](https://www.ibiblio.org/apollo/klabs/history/agc_schematics_block2/top_level/a27-a29-1.jpg) required to fully drive the CDU and the PSA.

### Power Supply

<img width="954" height="871" alt="image" src="https://github.com/user-attachments/assets/5b8cf1a1-48df-4f88-8993-867effa8d53b" />


The power supply, given 28VDC power in and synchronization signals from the AGC simulator, generates the 28Vrms @ 800Hz and 5Vrms @ 800Hz needed to power the resolvers and the CDU. A second nearly identical power supply chain generates the 15Vrms @ 800Hz representing the ATCA reference. It also incorporates a copy of the PSA's relay logic for startup and mode switching of the CDU. Lastly, it contains some switches from the Lunar Module's control panels relevant to CDU operation, including the fateful Rendezvous Radar mode switch.

In the spirit of the original PSA, the power supply is built with a modular design.

#### AAC, Filter, and Multivibrator Module

This module uses two out-of-phase 800Hz synchronization pulse trains from the AGC to discipline a multivibrator, which chops a reference voltage to produce a square wave. This square wave is passed through a low-pass filter to output a relatively clean ~1Vrms sine wave. The reference voltage is steered by an automatic amplitude control (AAC) circuit connected to the output of the 1% amplifier, boosting or reducing the output until exactly 28Vrms is achieved. The design is almost identical to [the original PSA module](https://archive.org/details/apertureCardBox462NARASW_images/page/n1333/mode/1up), with two key exceptions:
* The factory-chosen AAC tuning resistor has been replaced with a potentiometer
* A zener diode in the reference circuit has been replaced with a LM431 adjustable zener shunt regulator controlled by a potentiometer. This allows the maximum possible output voltage of the module to be tuned, at the cost of some responsiveness in the AAC. The original PSA modules will result in outputs of [more than 52Vrms (!)](https://youtu.be/mxMOano9Zls) at startup -- a level that the system clearly must have been designed to handle, but nevertheless makes me nervous to run into >50-year-old hardware that really wants 28Vrms. I have been tuning my modules to max out at around 32Vrms, which feels much safer.

#### Amplifier 1% 800 CPS Module

This is an original Block I PSA module that is used to boost the ~1Vrms 800Hz output from the AAC, Filter, and Multivibrator Module up to 28Vrms. It can deliver a good bit of power. So far I've been unable to find suitable replacements for its output transformer; so for now I'm simply using the original hardware. This gives the added benefit of driving the CDU and resolvers with AC waveforms of very similar character to the real spacecraft.

#### Fine Reference Module

This module contains a transformer to step down the 28Vrms reference generated by the 1% amplifier down to around 5.6Vrms, as well as an inductor to lightly shift the phase. This lower reference is used to drive the 16X resolvers, which need to have lower outputs than the 1X resolvers.

#### IMU Auxiliary, and Relay Module

This module combines subsets of the PSA IMU Auxiliary Module and the Relay Module onto a single board. It has all of the relay logic required to correctly sequence on the CDU and handle mode switching. It also contains some switches to stimulate discrete inputs to the CDU, including the CAGE switch from one of the LM panels.

#### LM Mode Switching Module

This module contains a simple implementation of the all-important Rendezvous Radar mode switch. The switch changes the rendezvous radar resolver reference voltage outputs from the 28Vrms chain to the 15Vrms chain. The module also includes compensation capacitors to make up for the aging film capacitors in the original 1% amplifiers, and small dummy loads to keep the power supplies happy while not driving anything.

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
