# Milestone 02 MATLAB Vision Scripts

## [milestone_2.m](milestone_2.m)

Processes stored images named `NoiseBackground.png` and `StickersWithNoise.PNG`, computes a difference mask, extracts object region properties, estimates colors and shapes, and draws centroid and bounding box annotations. Webcam setup is present as commented exploratory code.

## [test_file.m](test_file.m)

An experimental script containing webcam discovery, live image capture, background subtraction, morphological filtering, and the same broad object recognition approach. It contains multiple sequential test sections and assumes a particular Windows camera device configuration.

## Inputs

The sample image files referenced by `milestone_2.m` are available in [../pictures/](../pictures/). Run from a directory where the image filenames resolve, or adjust the image paths locally. MATLAB image processing functionality and, for camera experiments, suitable camera support are required.

**Status:** Research prototypes supplied as developed by the team. They have not been refactored into a single production ready camera application or independently rerun as part of this repository documentation review.
