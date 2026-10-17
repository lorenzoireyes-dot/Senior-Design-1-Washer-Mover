# Senior Design 1: Washer Mover

**Clemson University | ECE 4950 | Group 18 | Fall 2026**

An ongoing senior design project exploring an autonomous washer moving system through sensor and actuator control, computer vision, mechanical design, and engineering evaluation.

## Progress

Two milestones are documented with original PDF reports and supporting engineering files. The final integrated autonomous washer moving system remains under development.

| Milestone | Completed work | Project evidence |
| --- | --- | --- |
| [01: Sensor and Actuator Control](milestone_01_sensor_actuator/README.md) | Arduino Mega 2560, Simulink sensor acquisition, manual and threshold based servo control, SolidWorks design | [Report](milestone_01_sensor_actuator/reports/Milestone1_Group18%20(1).pdf), [Simulink models](milestone_01_sensor_actuator/matlab_code/), [Pictures](milestone_01_sensor_actuator/pictures/) |
| [02: Computer Vision and Concept Selection](milestone_02_computer_vision/README.md) | MATLAB image processing, color and shape classification, centroid identification, mechanical concept evaluation | [Report](milestone_02_computer_vision/reports/milestone2_g18.pdf), [MATLAB scripts](milestone_02_computer_vision/matlab_code/), [CAD files](milestone_02_computer_vision/cad_documents/) |

## Engineering highlights

### Milestone 01

The team interfaced a potentiometer and servo motor with an Arduino Mega using MATLAB and Simulink 2026a. The report documents live analog measurement, manual actuator commands, and threshold based switching. A SolidWorks golf ball shaped design was created as a separate introductory CAD exercise.

### Milestone 02

The team explored background subtraction, region detection, centroid location, and object classification using MATLAB. The repository includes scripts for processing saved test images and experimenting with webcam capture. A weighted design matrix selected a rotating board with a stationary electromagnetic pickup, scoring 79/100 in the team's evaluation.

## Repository layout

- [Milestone 01](milestone_01_sensor_actuator/): PDF report, Simulink models, plots, circuit diagram, and hardware photographs.
- [Milestone 02](milestone_02_computer_vision/): PDF report, MATLAB vision scripts, test images, design evidence, and game board CAD exports.
- [Camera source](camera_source/): Directory retained for future consolidated camera firmware or scripts.
- [Future milestones](future_milestones/): Reserved for subsequent documented work.

## Team

Group 18: Aden Casselman, Elijah Jarrett, Lorenzo Reyes, Skyler Beck, and Tyler Burton.

## Status and attribution

This is a collaborative university engineering project. The source code and reports represent team work; individual contributions are not assigned without evidence. The first two milestone exercises and evaluations are documented, but a fully integrated autonomous system is not claimed.

The repository retains some generated Simulink build outputs from the original Milestone 01 upload. These are not primary source files and are excluded from future tracking by the updated Git ignore rules.
