# Milestone 01: Sensor and Actuator Control

**ECE 4950 | Group 18 | September 18, 2026**

## Overview

The team used MATLAB and Simulink 2026a with an Arduino Mega 2560, B103 potentiometer, and MG92B servo motor to complete three sensor and actuator experiments. A separate SolidWorks exercise produced a golf ball shaped model with “Team 18” debossed into the surface.

## Demonstrated work

1. **Analog data acquisition:** Read potentiometer input on Arduino analog pin A4 and displayed the readings in a Simulink Scope. The observed range was approximately 0 to just under 700.
2. **Manual actuator control:** Changed servo motor commands through Simulink and observed corresponding changes in operation.
3. **Threshold based control:** Combined potentiometer measurements with Simulink switching logic, using a threshold of approximately 500 to change servo operating state.
4. **3D design:** Modeled a golf ball shaped part in SolidWorks within the assigned dimensional envelope.

The experiments were operated using Simulink's Monitor and Tune functionality. The report includes circuit diagrams, a photograph of the assembled circuit, Simulink model screenshots, signal plots, and a SolidWorks rendering.

## Limitations and scope

The report notes inconsistent potentiometer readings and repeatability limitations. The threshold experiment's prose contains differing descriptions of the exact motor state transition, so this README records the verified existence of threshold based switching without asserting a single transition direction.

This milestone is a foundational sensor and actuator exercise, **not a demonstration of a completed autonomous washer mover**.

## Original evidence

Place the original Milestone 01 Word report in [reports/](reports/). Figures are already embedded in the report; separate image uploads are optional.

## Additional project files

- [Pictures](pictures/): Photographs, diagrams, and screenshots.
- [MATLAB code](matlab_code/): MATLAB scripts and Simulink models.
- [CAD documents](cad_documents/): Original CAD files, assemblies, and drawings.

These directories are ready for uploads; their contents should not be treated as completed deliverables until files are added.
