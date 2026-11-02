# Hardware Interface

The Milestone 03 report describes an **Arduino Mega**, **L298N dual channel motor driver**, and **12 V rated DC motor**.

| Arduino Mega signal | L298N input | Function |
| --- | --- | --- |
| Digital pin 4 | IN1 | Direction control |
| Digital pin 5 | IN2 | Direction control |

IN1 high and IN2 low provide clockwise rotation; reversing those inputs changes direction, as documented in the report. The motor driver uses a separate motor supply because the Arduino cannot directly supply motor drive current.

The L298N introduces a voltage drop. Voltage, available torque, and directional consistency must be checked under the intended mechanism load. The report contains wiring figures, but the original diagram files have not been separately provided.
