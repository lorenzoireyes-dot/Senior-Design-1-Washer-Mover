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

| Location | Contents |
| --- | --- |
| [reports](reports/) | [Original Milestone 03 PDF](reports/milestone3_g18.pdf) and [report summary](reports/Milestone3_Group18_Summary.md) |
| [matlab_code](matlab_code/) | [App Designer source: select_gui_test.mlapp](matlab_code/select_gui_test.mlapp) |
| [Pictures](Pictures/) | Five engineering figures: vision test, GUI startup, circuit diagram, PID parameters, software flowchart |
| [testing](testing/) | [Controller observations](testing/PID_results.md) and [ten experimental images](testing/Pictures/) |

## Selected engineering evidence

- [GUI startup](Pictures/gui_start_up.png)
- [Motor driver circuit diagram](Pictures/main_circuit_diagram.png)
- [Software flowchart](Pictures/software_flow_chart_final.png)
- [Controller parameter screenshot](Pictures/pid_controller_parameters.png)
- [Vision system test](Pictures/VisionSystemTest.JPG)
- [Motor position trace](testing/Pictures/motor_position_fig.png)
- [Error signal trace](testing/Pictures/error_signal_fig.png)
- [Desired position trace](testing/Pictures/desired_position_fig.png)
- [Processed washer detection image](testing/Pictures/test_processed_image.png)

## Status

**Milestone 03 documented.** Full autonomous washer retrieval is not validated. Controller overshoot, settling time, steady state error, and final risk acceptance have not been quantified or verified in the submitted report.

The original Milestone 03 PDF report, native MATLAB App Designer `.mlapp` file, and testing figures are available in the directories above. A standalone Simulink `.slx` model is not present in the Milestone 03 folder. Documentation represents team work and does not assign individual authorship.

## Team

Aden Casselman, Elijah Jarrett, Lorenzo Reyes, Skyler Beck, and Tyler Burton.
