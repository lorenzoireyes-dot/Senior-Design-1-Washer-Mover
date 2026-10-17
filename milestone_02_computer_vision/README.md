# Milestone 02: Computer Vision and Concept Selection

**ECE 4950 | Group 18 | Fall 2026**

## Overview

This milestone investigated camera based recognition of game pieces and compared mechanical designs for the washer mover. The team's weighted decision matrix selected a rotating game board with a stationary electromagnetic pickup, scoring **79/100**.

## Vision processing

The MATLAB scripts explore:
- Background subtraction and threshold based segmentation.
- Region properties, bounding boxes, and object centroids.
- Approximate color recognition using HSV hue.
- Shape classification using circularity and extent.
- Visualization of labeled objects and detected positions.

The scripts store intermediate results in a `gameState` structure. This is a prototype data representation, not evidence of completed autonomous motion control.

## Uploaded artifacts

- [Original Milestone 02 report (PDF)](reports/milestone2_g18.pdf)
- [MATLAB scripts](matlab_code/): `milestone_2.m` for saved image processing and `test_file.m` for exploratory camera capture and processing.
- [Pictures and test images](pictures/): Design brainstorming, decision matrix, requirements, input images, and processing results.
- [CAD documents](cad_documents/): `QuarterInchGameBoard.dwg` and `QuarterInchGameBoard.stl`.

## Development status and limitations

The MATLAB scripts are research and prototyping artifacts. Camera access in `milestone_2.m` is commented out in favor of stored images. `test_file.m` contains multiple experimental camera capture sections with hardware specific configuration. Neither script is represented as a packaged, automatically runnable production application.

The selected mechanical concept is a design decision, not a claim that the complete mechanism or electromagnetic pickup has been constructed and validated.
