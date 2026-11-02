# Senior Design 1: Washer Mover

**Clemson University | ECE 4950 | Group 18 | Fall 2026**

An ongoing senior design project exploring an autonomous washer moving system through sensor and actuator control, computer vision, mechanical design, and engineering evaluation.

## Progress

Three milestones are documented with their reports and supporting engineering files. Milestone 03 includes the original PDF report, a MATLAB App Designer application, circuit and GUI figures, and motor and vision test images. The fully integrated autonomous washer moving system remains under development.

| Milestone | Completed work | Project evidence |
| --- | --- | --- |
| [01: Sensor and Actuator Control](milestone_01_sensor_actuator/README.md) | Arduino Mega 2560, Simulink sensor acquisition, manual and threshold based servo control, SolidWorks design | [Report](milestone_01_sensor_actuator/reports/Milestone1_Group18%20(1).pdf), [Simulink models](milestone_01_sensor_actuator/matlab_code/), [Pictures](milestone_01_sensor_actuator/pictures/) |
| [02: Computer Vision and Concept Selection](milestone_02_computer_vision/README.md) | MATLAB image processing, color and shape classification, centroid identification, mechanical concept evaluation | [Report](milestone_02_computer_vision/reports/milestone2_g18.pdf), [MATLAB scripts](milestone_02_computer_vision/matlab_code/), [CAD files](milestone_02_computer_vision/cad_documents/) |
| [03: Control Subsystem and Motor Positioning](milestone_03_control_subsystem/README.md) | MATLAB App Designer GUI, Arduino Mega and L298N interface, motor control testing, safety and financial evaluation | [Report](milestone_03_control_subsystem/reports/milestone3_g18.pdf), [MATLAB app](milestone_03_control_subsystem/matlab_code/select_gui_test.mlapp), [Simulink model](milestone_03_control_subsystem/matlab_code/MotorModel_Sp23_V22b.slx), [Figures](milestone_03_control_subsystem/Pictures/), [Test images](milestone_03_control_subsystem/testing/Pictures/) |

## Engineering highlights

### Milestone 01

The team interfaced a potentiometer and servo motor with an Arduino Mega using MATLAB and Simulink 2026a. The report documents live analog measurement, manual actuator commands, and threshold based switching. A SolidWorks golf ball shaped design was created as a separate introductory CAD exercise.

### Milestone 02

The team explored background subtraction, region detection, centroid location, and object classification using MATLAB. The repository includes scripts for processing saved test images and experimenting with webcam capture. A weighted design matrix selected a rotating board with a stationary electromagnetic pickup, scoring 79/100 in the team's evaluation.

### Milestone 03

Group 18 developed a MATLAB App Designer GUI for detecting colored washers and selecting a target, connected the selection workflow to a Simulink motor model and Arduino Mega, and tested controller response using a DC motor and L298N driver. Reported PID gains were P = 0.7, I = 0, D = 0.05. The report also documents a preliminary DFMEA, a financial exercise, and an employee training program. Complete washer retrieval, motion accuracy metrics, and final safety verification remain future work.

## Repository layout

- [Milestone 01](milestone_01_sensor_actuator/): PDF report, Simulink models, plots, circuit diagram, and hardware photographs.
- [Milestone 02](milestone_02_computer_vision/): PDF report, MATLAB vision scripts, test images, design evidence, and game board CAD exports.
- [Milestone 03](milestone_03_control_subsystem/): Original PDF report, App Designer source, control and vision figures, experimental plots, and accompanying documentation.
- [Camera source](camera_source/): Directory retained for future consolidated camera firmware or scripts.
- [Future milestones](future_milestones/): Reserved for subsequent documented work.

## Team

Group 18: Aden Casselman, Elijah Jarrett, Lorenzo Reyes, Skyler Beck, and Tyler Burton.

## Status and attribution

This is a collaborative university engineering project. The source code and reports represent team work; individual contributions are not assigned without evidence. Three milestone stages are documented, but a fully integrated autonomous system is not claimed. The Milestone 03 PDF report and MATLAB App Designer `.mlapp` source are present. The Simulink `.slx` file is available in the Milestone 03 `matlab_code` folder, but execution and hardware compatibility have not been independently verified.

The repository retains some generated Simulink build outputs from the original Milestone 01 upload. These are not primary source files and are excluded from future tracking by the updated Git ignore rules.
