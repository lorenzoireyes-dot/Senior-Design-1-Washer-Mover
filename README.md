# Senior Design 1: Washer Mover

**Clemson University | ECE 4950 | Group 18 | Fall 2026**

An ongoing senior design project exploring an autonomous washer moving system through embedded control, machine vision, mechanical design, and engineering verification.

## Project status

Two technical milestones have been completed and documented in the team's reports. The full autonomous washer moving system remains under development.

| Milestone | Focus | Status |
| --- | --- | --- |
| [01: Sensor and Actuator Control](milestone_01_sensor_actuator/README.md) | Arduino Mega, MATLAB/Simulink, potentiometer, servo motor, SolidWorks | Completed milestone |
| [02: Computer Vision and Concept Selection](milestone_02_computer_vision/README.md) | MATLAB image processing, game piece detection, centroid tracking, design requirements, concept evaluation | Completed milestone |

## Milestone highlights

### 01 | Sensor and actuator control

Using MATLAB/Simulink 2026a and an Arduino Mega 2560, the team acquired potentiometer measurements, controlled a servo motor manually, and implemented threshold based actuator switching. A SolidWorks golf ball shaped part with the team identifier was also modeled.

### 02 | Computer vision and mechanical concept selection

The team developed camera based image processing to identify and locate game pieces, represented observations in a `gameState` structure, and evaluated mechanical approaches using a weighted decision matrix. A rotating board with stationary electromagnetic pickup was selected, receiving 79/100 in the report's evaluation.

## Repository structure

- [Milestone 01 documentation](milestone_01_sensor_actuator/)
- [Milestone 02 documentation](milestone_02_computer_vision/)
- [Camera source code](camera_source/)
- [Future milestones](future_milestones/)

The original Word milestone reports and camera source code are **not yet in this repository**. The report directories are prepared for those files. The milestone summaries are based on the reports supplied for documentation review. Images are already embedded in the reports, so separate screenshots are not necessary.

## Team

Group 18: Aden Casselman, Elijah Jarrett, Lorenzo Reyes, Skyler Beck, and Tyler Burton.

## Scope

The completed milestones establish preliminary sensing, actuation, image processing, and concept selection work. They do not establish that the final autonomous robot has been built or integrated. This repository will be updated as additional work is completed.
