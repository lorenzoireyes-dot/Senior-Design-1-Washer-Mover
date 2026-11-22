# Milestone 04: Prototype Integration and System Testing

**Clemson University | ECE 4950 | Group 18 | Fall 2026**

[Back to project overview](../README.md)

## Objective

Integrate the washer positioning project's MATLAB interface, camera based object detection, motor control, encoder feedback, electronics, and mechanical fixtures into a working prototype. This folder documents the latest uploaded design files and a recorded test run, rather than claiming final performance or full autonomous operation.

## What is included

| Area | Files and purpose |
| --- | --- |
| [MATLAB and Simulink](Matlab%20Code/) | [Current App Designer GUI](Matlab%20Code/milestone4.mlapp), [game board model](Matlab%20Code/GameBoard_Fall26.slx), and [motor model](Matlab%20Code/MotorModel_Sp23_V22b.slx) |
| [Encoder interface](Matlab%20Code/) | [MATLAB System object](Matlab%20Code/Encoder_arduino.m), [C++ support](Matlab%20Code/encoder_arduino.cpp), and [header](Matlab%20Code/encoder_arduino.h) for Arduino quadrature encoder readings |
| [Electrical schematic](Electrical%20Schematic/ECE4950_Group18_Electrical_Schematic_Rev1.1.pdf) | Revision 1.1 PDF of the group electrical design |
| [3D print files](3d_print_files/) | SolidWorks parts and STL exports for the first and second design iterations, a motor holder, servo attachment, and board holder |
| [Prototype photos and GUI images](pictures/Prototype%201/) | Prototype photographs, camera and washer detection examples, a selection test, GUI test, and a bug image |
| [Recorded test](Video/Test%20Run.mp4) | Short demonstration video uploaded with this milestone |

## System architecture

The intended workflow is: capture or process a camera image, identify and select a washer in the MATLAB GUI, convert the target to a commanded position, and use Simulink with Arduino motor control and encoder feedback to position the mechanism. The mechanical fixtures support the motor, camera, and board. Consult the schematic and native model files for specific connections and control details.

The [encoder MATLAB class](Matlab%20Code/Encoder_arduino.m) declares an external code dependency. Its companion C++ file implements Arduino interrupts and count tracking for quadrature encoder inputs. These files are **source dependencies**, not disposable generated firmware.

## Prototype and design evidence

**Mechanical iterations**

- [MK1 motor and camera holder](3d_print_files/MK1/SeniorDesign_motor%26camholder_pic_MK1.png), with a native SolidWorks part and STL.
- [MK2 updated part](3d_print_files/MK2/SeniorDesignMK2.SLDPRT) and [STL export](3d_print_files/MK2/SeniorDesignMK2.STL).
- [MK2 motor holder](3d_print_files/MK2/motor_holder.SLDPRT), plus [STL](3d_print_files/MK2/motor_holder.STL).
- [Servo attachment](3d_print_files/Servo_motor_attachment.SLDPRT) and [game board holder](3d_print_files/gameboard_holder.SLDPRT).

**Computer vision and interface**

- [Empty board](pictures/Prototype%201/Empty%20Game%20Board.png) and [board with washers](pictures/Prototype%201/Game%20Board%20with%20Washers.png).
- [Extracted image](pictures/Prototype%201/Extracted%20Image.png), [detected objects](pictures/Prototype%201/Detected%20Objects.png), and [washer selection test](pictures/Prototype%201/Washer%20Selection%20Test.png).
- [GUI test](pictures/Prototype%201/GUI%20Test.png) and [documented bug](pictures/Prototype%201/Bug.png).

**Hardware and demonstration**

- [Electrical schematic revision 1.1](Electrical%20Schematic/ECE4950_Group18_Electrical_Schematic_Rev1.1.pdf)
- [Test Run.mp4](Video/Test%20Run.mp4)

## Opening the project

1. Use MATLAB with Simulink, App Designer, and the support packages needed for the project's Arduino hardware.
2. Download the contents of `Matlab Code` together. Open `milestone4.mlapp` in App Designer and inspect `GameBoard_Fall26.slx` and `MotorModel_Sp23_V22b.slx` in Simulink.
3. Review model hardware settings, assigned pins, camera availability, serial connectivity, and hardware wiring before attempting deployment.
4. Keep the encoder `.m`, `.cpp`, and `.h` sources available when building a model that uses the custom encoder block. Its `updateBuildInfo` method currently expects support sources in a sibling `src` directory, whereas the uploaded C++ and header are stored beside the MATLAB class. The source path or local directory layout may need correction before a clean rebuild.
5. Consult the schematic rather than assuming a particular pinout from the README.

**Reproducibility note:** The repository contains the native project sources, but the uploaded files have not been independently executed or validated in a clean environment. The video documents a test, not a complete quantitative acceptance test.

## Project status

**Milestone 04 prototype material uploaded.** The current GUI, controller models, encoder support code, mechanical design iterations, electrical schematic, test imagery, and demonstration video are available. This folder does not yet contain a Milestone 04 final report, measured positioning accuracy, repeatability statistics, or evidence of fully autonomous washer pickup and delivery. Those outcomes are not asserted here.

## Team

Group 18: Aden Casselman, Elijah Jarrett, Lorenzo Reyes, Skyler Beck, and Tyler Burton. This repository documents collaborative work and does not assign individual credit without corroborating evidence.
