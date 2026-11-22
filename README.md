# Senior Design 1: Washer Mover

**Clemson University | ECE 4950 | Group 18 | Fall 2026**

An engineering senior design project developing an automated washer positioning system using MATLAB computer vision, an App Designer interface, Simulink control, Arduino hardware, and custom mechanical fixtures.

## Current status

**Four milestone directories are documented.** Milestone 04 adds the current MATLAB GUI, Simulink game board and motor models, quadrature encoder support code, a revised electrical schematic, SolidWorks and STL prototype iterations, test imagery, and a demonstration video. The integrated prototype is documented, but measured end to end accuracy and fully autonomous washer pickup and delivery have not been independently verified.

## Milestones

| Stage | Engineering work | Evidence |
| --- | --- | --- |
| [01: Sensor and actuator control](milestone_01_sensor_actuator/README.md) | Arduino Mega 2560, Simulink analog acquisition, servo control, and introductory CAD | [Report](milestone_01_sensor_actuator/reports/Milestone1_Group18%20(1).pdf) · [Model files](milestone_01_sensor_actuator/matlab_code/) |
| [02: Computer vision and concept selection](milestone_02_computer_vision/README.md) | Color and shape processing, centroid detection, and rotating board concept evaluation | [Report](milestone_02_computer_vision/reports/milestone2_g18.pdf) · [MATLAB scripts](milestone_02_computer_vision/matlab_code/) |
| [03: Control subsystem and motor positioning](milestone_03_control_subsystem/README.md) | MATLAB GUI, Arduino and L298N testing, Simulink controller and motor response analysis | [Report](milestone_03_control_subsystem/reports/milestone3_g18.pdf) · [Control results](milestone_03_control_subsystem/testing/PID_results.md) |
| [04: Prototype integration and testing](milestone_04/README.md) | Current GUI and Simulink models, encoder interface, prototype CAD iterations, revised electrical schematic, and test evidence | [Current GUI](milestone_04/Matlab%20Code/milestone4.mlapp) · [Schematic](milestone_04/Electrical%20Schematic/ECE4950_Group18_Electrical_Schematic_Rev1.1.pdf) · [Test video](milestone_04/Video/Test%20Run.mp4) |

## Engineering overview

The system combines camera based washer detection and selection with a motor driven positioning mechanism. MATLAB processes images and provides the operator interface. Simulink models support control and hardware deployment. Arduino hardware interfaces with a motor driver, motor, and position feedback circuitry. Custom 3D parts are documented through SolidWorks and STL files.

In Milestone 02, the team selected a rotating board and stationary electromagnetic pickup concept in its design evaluation. In Milestone 03, experimental control tests used reported PID parameters **P = 0.7, I = 0, D = 0.05**, with remaining response errors. Milestone 04 extends the repository with prototype iteration files, encoder source code, and a recorded test. The uploaded evidence does not establish final retrieval reliability or validated numerical performance.

## Start with the current files

- [Milestone 04 documentation](milestone_04/README.md)
- [Current MATLAB App Designer GUI](milestone_04/Matlab%20Code/milestone4.mlapp)
- [Game board Simulink model](milestone_04/Matlab%20Code/GameBoard_Fall26.slx)
- [Motor Simulink model](milestone_04/Matlab%20Code/MotorModel_Sp23_V22b.slx)
- [Encoder integration source](milestone_04/Matlab%20Code/)
- [Electrical schematic revision 1.1](milestone_04/Electrical%20Schematic/ECE4950_Group18_Electrical_Schematic_Rev1.1.pdf)
- [Mechanical designs and printable STLs](milestone_04/3d_print_files/)
- [Prototype and GUI test images](milestone_04/pictures/Prototype%201/)
- [Test demonstration](milestone_04/Video/Test%20Run.mp4)

To reproduce the project, open the native files in MATLAB, App Designer, and Simulink, then review hardware support package requirements and the electrical schematic. The encoder System object has a source directory assumption that may require adjusting in a fresh checkout. See the Milestone 04 README for details.

## Repository structure

```text
milestone_01_sensor_actuator/       Sensors, servo control, introductory CAD, report
milestone_02_computer_vision/       Vision processing, concept selection, CAD, report
milestone_03_control_subsystem/     Interface and control development, experimental results
milestone_04/
  3d_print_files/                  Mechanical iterations and holders
  Electrical Schematic/            Electrical design PDF
  Matlab Code/                     GUI, Simulink models, encoder dependencies
  Video/                           Test run demonstration
  pictures/                        Prototype photographs and vision/GUI evidence
```

## Team and attribution

Group 18: Aden Casselman, Elijah Jarrett, Lorenzo Reyes, Skyler Beck, and Tyler Burton.

This is a collaborative Clemson University design project. Source files, drawings, reports, and demonstrations document team work; no individual authorship is assigned without separate evidence.

## Verification and repository hygiene

The uploaded project files and recorded test establish what has been documented, not an independently verified full autonomous deployment. A final Milestone 04 PDF report is not currently present.

Some previously committed Milestone 01 generated MATLAB and Simulink build artifacts remain in the history and directory. These are not necessary project entry points. The primary reusable deliverables are the native models, GUI source, required custom code, documentation, and hardware designs.
