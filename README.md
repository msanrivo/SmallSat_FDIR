# SmallSat_FDIR
### Fault Detection, Isolation, and Recovery (**FDIR**) of Attitude and Orbital Control System (**AOCS**).
---
A Cubesat simulator in MATLAB Simulink which provides an interactive control panel for simulating cubesat missions and experiment with on board sensor modules for navigation and attitude control along with implementation of FDIR (Fault detection and Isolation Algorithms). It also provides intuitive visualizations for Groundtracking and 3D orbit models. I also supports a number of data plotting and logging features to aid research and development.   

The satellite design is based on a  **2U Cubesat (Dim : 10x20x10 cm weight: 2.66 kg)** Currently the model has support for GNSS(GPS), Startracker and IMU (Gyro) sensors which are simulated appropriately taking into account random stochastic processes. (based on Gaussian noise models tuned with statistical parameters from manufactures of real cubesat components) This guides a 6 DoF Navigation System that takes in sensor data and provides control signals for guidance


### __Installation and Startup Detains__

__Clone the repository__

``git clone https://github.com/msanrivo/SmallSat_FDIR.git
``  

__Open MATLAB (2019 or later)__  
``Initialization.m``  
This automatically adds required scripts to path and loads all required variables for simulation and opens up the model in Simulink. The model is supported in Simulink&copy; 2019a or later.  
  




### __Paper__
---
__Design of a Model-Based Failure Detection Isolation and Recovery System for Cubesats__ _(Javier Sanz Lobo et al.)_
[Paper link](https://www.eucass.eu/component/docindexer/?task=download&id=5646)
