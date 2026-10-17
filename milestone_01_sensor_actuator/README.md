# Milestone 01: Sensor and Actuator Control

**ECE 4950 | Group 18 | September 18, 2026**

## Overview

The team tested Arduino Mega 2560 interfacing with MATLAB and Simulink 2026a using a B103 potentiometer and MG92B servo motor. A separate SolidWorks exercise produced a golf ball shaped design with the team number debossed.

## Experiments

1. **Potentiometer measurement:** Analog input on A4 was monitored in a Simulink Scope. The report describes measurements ranging from approximately 0 to just under 700.
2. **Manual servo control:** Simulink switching and constant inputs were used to change actuator commands.
3. **Threshold based servo control:** Potentiometer readings were compared with an adjustable threshold, demonstrated at approximately 500, to change the servo operating state.
4. **CAD exercise:** A golf ball shaped object with a team identifier was designed within the assigned dimensions.

The report contains some inconsistent descriptions of which threshold crossing activates or deactivates the motor. This summary does not assume a particular transition direction.

## Uploaded artifacts

- [Original Milestone 01 report (PDF)](reports/Milestone1_Group18%20(1).pdf), including circuit images, plots, hardware photographs, and the CAD figure.
- [Simulink models and build files](matlab_code/): `arduino_interfacing.slx` and `milestone1.slx` are the principal editable models.
- [Pictures](pictures/): Circuit diagram, Simulink plots and screenshots, and original HEIC hardware photographs.
- [CAD documents](cad_documents/): No standalone CAD file uploaded for this milestone. The SolidWorks rendering is included in the PDF report.

## Engineering limitations

The potentiometer exhibited measurement variability. The Simulink folder includes generated build artifacts that are not necessary for reviewing the models. This milestone demonstrates introductory sensor and actuator interfacing, not a completed autonomous washer mover.
