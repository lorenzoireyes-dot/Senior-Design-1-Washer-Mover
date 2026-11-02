# Motor Control Experiments

**Test system:** MATLAB, Simulink, Arduino Mega, L298N driver, DC motor.

**Reference signal:** Sinusoidal command spanning approximately negative 180 to positive 180 degrees.

| Parameter | Experimental value |
| --- | --- |
| Proportional gain | 0.7 |
| Integral gain | 0 |
| Derivative gain | 0.05 |

### Observations

Increasing proportional gain produced a stronger response but more overshoot and oscillation. Derivative action introduced damping and improved smoothness, while excessive derivative action could amplify noise or reduce responsiveness. The report presents motor position and error plots; error spikes remained around rapid position changes.

### Remaining measurements

The report does not provide verified numerical values for overshoot, settling time, or steady state error. This is a qualitative control experiment, not a completed accuracy specification.

### Uploaded test plots

- [Desired position](Pictures/desired_position_fig.png)
- [Measured motor position](Pictures/motor_position_fig.png)
- [Error signal](Pictures/error_signal_fig.png)

### Uploaded computer vision test images

- [Pretest background](Pictures/pre-tests_bg.png), [current image](Pictures/pre-tests_curr.png), [difference image](Pictures/pre-tests_diff.png)
- [Test background](Pictures/test_bg_image.png), [current frame](Pictures/test_curr_image.png), [calculated difference](Pictures/test_calculated_diff.png), [processed detection](Pictures/test_processed_image.png)
