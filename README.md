# Simulación Rocas Volcánicas

## Overview
**Simulación Rocas Volcánicas** is a MATLAB program designed to simulate the trajectory of volcanic rocks ejected from the *Volcán de Fuego* in Guatemala. The program uses physics-based calculations to model the movement of rocks under the influence of gravity, air resistance, and varying initial conditions, providing a detailed analysis of their motion.

## Features

### Realistic Physics Modeling
- Considers key physical parameters:
  - Initial height: 3763 meters.
  - Air density: 1.2 kg/m³.
  - Rock mass: 16 kg.
  - Rock area: 0.00298 m².
  - Rock volume: 0.0000152 m³.
  - Gravitational acceleration: -9.81 m/s².
- Incorporates drag force based on velocity and air density.

### User-Defined Inputs
- **Launch angle**: Allows users to specify the angle of rock ejection (in degrees).
- **Initial velocity**: User-defined initial velocity of the rock (in m/s).

### Dynamic Simulation
- Computes the rock's:
  - Displacement in X and Y directions.
  - Velocity components in X and Y.
  - Resultant velocity at each timestep.
- Animates the rock's trajectory with real-time updates.
- Graphical visualization includes:
  - Trajectory plot.
  - Height and displacement labels.

### Results Table
- Generates a comprehensive table with the following columns:
  - Displacement.
  - Height.
  - Velocity in X direction.
  - Velocity in Y direction.
  - Resultant velocity.

## How to Use

### Input Parameters
1. Run the script `Simulacion.m` in MATLAB.
2. Enter the required inputs when prompted:
   - **Launch angle** (degrees): Specifies the angle of projection.
   - **Initial velocity** (m/s): Sets the speed of the rock at launch.

### Outputs
- A real-time animation of the trajectory.
- A detailed table of results displayed in the MATLAB console.

## File Structure
- **`Simulacion.m`**: The main script containing the simulation logic and visualization.

## Purpose
This project demonstrates the application of computational physics to model and analyze natural phenomena. It provides insights into the dynamics of volcanic eruptions and the factors affecting the trajectory of ejected rocks.

## Acknowledgments
- **MATLAB Toolboxes**: For animation and data visualization.
- Inspiration from the study of volcanic activity at the *Volcán de Fuego* in Guatemala.
