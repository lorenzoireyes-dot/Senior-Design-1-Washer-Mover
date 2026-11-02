# Milestone 03: Control Subsystem and Motor Positioning

**Clemson University | ECE 4950 | Group 18 | October 22, 2026**

## Objective

Integrate camera based washer identification, a MATLAB App Designer GUI, a Simulink motor controller, and Arduino Mega hardware to select a washer and command a motor toward its location. Motor response was evaluated using a hardware in the loop approach.

## Documented work

- Developed a GUI for background capture, scanning, washer selection, motor commands, live video, and reset.
- Used background image subtraction to detect washers; recorded identifier, color, centroid, shape, and image information in a `gameState` data structure.
- Connected MATLAB and Simulink commands to an Arduino Mega, L298N motor driver, and 12 V rated DC motor.
- Experimented with controller behavior under a sinusoidal angular reference from negative 180 to positive 180 degrees.
- Selected experimental PID values **P = 0.7, I = 0, D = 0.05**. Residual tracking errors and transients remain.
- Completed preliminary financial, employee training, and design safety assessments.

## Files

| Subdirectory | Contents |
| --- | --- |
| [reports](reports/) | Milestone 03 report summary |
| [hardware](hardware/) | Motor driver interface and wiring |
| [matlab_code](matlab_code/) | MATLAB GUI and image processing source file location |
| [simulink_models](simulink_models/) | Motor control model source file location |
| [testing](testing/) | PID experiments and observed behavior |
| [safety](safety/) | Preliminary hazard analysis |
| [pictures](pictures/) | Figure and hardware photograph location |

## Status

**Milestone 03 documented.** Full autonomous washer retrieval is not validated. Controller overshoot, settling time, steady state error, and final risk acceptance have not been quantified or verified in the submitted report.

The submitted Word report and native MATLAB/Simulink files are not yet uploaded in these directories. This repository documentation summarizes the team's report and does not claim separate individual authorship.

## Team

Aden Casselman, Elijah Jarrett, Lorenzo Reyes, Skyler Beck, and Tyler Burton.
