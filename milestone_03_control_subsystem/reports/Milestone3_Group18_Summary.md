# Group 18 Milestone 03 Report Summary

**Course:** ECE 4950  
**Date:** October 22, 2026  
**System:** Automated washer positioning system

This Markdown file summarizes the Milestone 03 team report. The [original report PDF](milestone3_g18.pdf) is included alongside this summary.

## Control subsystem

Hardware in the loop experiments connected a physical DC motor to the control environment through the Arduino Mega and Simulink. The purpose was to test realistic motor behavior and feedback effects rather than rely solely on ideal simulation.

## Vision and software integration

The MATLAB App Designer GUI initializes the webcam and Simulink model, captures a background image of the empty board, captures a new frame containing washers, and processes the difference between them. Detected objects are stored in a `gameState` structure with object identifiers and image descriptors. Users select a detected washer from a menu; its stored location supports calculation of a desired motor command. The application permits rescanning the board.

## Motor and controller evaluation

A 12 V rated DC motor is driven through an L298N module and Arduino Mega. The report documents driver direction inputs at Arduino digital pins 4 and 5. Experimental controller gains were **P = 0.7, I = 0, D = 0.05**. A sinusoidal reference spanning negative 180 to positive 180 degrees was used to observe position and error signals. Tests showed motor motion in response to changing commands but also transient oscillation and error spikes.

## User interface

The reported controls are Background, Scan, Washer selection, Select, Video, and Reset. Planned changes include representing all six game board wells and allowing sequential movement through assigned washer destinations.

## Financial and employee development exercise

The business estimate reports total annual costs of **$675,775** and a calculated overhead rate of **140.92%**. The proposed five engineer training program totals **120 hours annually** with an estimated budget of **$12,162.80**.

## Design safety

The preliminary DFMEA considers washer release, excessive motor speed, loose mounts, cable hazards, unclear operating state, and invalid motion commands. Described safeguards include a solenoid, limited motor speed, a rigid support arch, managed wiring, and LED state indicators. The report explicitly notes that adequate risk reduction has not yet been experimentally proven.

## Outstanding verification

- Quantify overshoot, settling time, and steady state angular error.
- Confirm driver supply voltage and torque under mechanical load.
- Validate repeatable washer retention and retrieval.
- Verify abnormal state handling, structural stability, and safety controls.

**Source:** Group 18, *Milestone 3*, ECE 4950, Clemson University, October 22, 2026.
