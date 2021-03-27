# SmallSat_FDIR
### Fault Detection, Isolation, and Recovery (**FDIR**) of Attitude and Orbital Control System (**AOCS**).
---
A CubeSat simulator in MATLAB Simulink which provides an interactive control panel for simulating CubeSat missions and experiment with on board sensor modules for navigation and attitude control along with implementation of FDIR (fault detection and Isolation Algorithms). It also provides intuitive visualizations for Groundtracking and 3D orbit models. It also supports a number of data plotting and logging features to aid research and development.   

The satellite design is based on a  **2U CubeSat (Dim : 10x20x10 cm weight: 2.66 kg)** Currently the model has support for GNSS(GPS), Startracker and IMU (Gyro) sensors which are simulated appropriately taking into account random stochastic processes. (based on Gaussian noise models tuned with statistical parameters from manufactures of real CubeSat components) This guides a 6 DoF Navigation System that takes in sensor data and provides control signals for guidance  

![2U Cubesat](https://i.imgur.com/eHx8vac.png)


### __Installation and Startup Detains__

__Clone the repository__

```
git clone https://github.com/msanrivo/SmallSat_FDIR.git
```  

__Open MATLAB (2019 or later)__  

```
Initialization.m
```  

This automatically adds required scripts to path and loads all required variables for simulation and opens up the model in Simulink. The model is supported in Simulink&copy; 2019a or later. This requires ephermis data which can be downlaoded from  

[Ephermis Data](https://in.mathworks.com/matlabcentral/fileexchange/46671-ephemeris-data-for-aerospace-toolbox)  

## __Technical Details__  

![](https://i.imgur.com/cdNhbMt.jpg)  

- The 6 DoF control of the satellite is subdivided into two primary subsections: Orbit Control (navigation) and Attitude Control (spatial orientation). The control logic for both is based on Linear Quadratic Regulator (optimized closed loop full state feedback)
- The speed *v* and position *r* of the satellite is determined using the GPS sensor; the on board gyroscope measures the angular rate *w* and the star trackers determine the position quaternion *q*. This represents the full state representation that is to be adjusted according to the mission plan loaded.
- The FDIR system monitors for fault in sensors (eg: frozen signals) and reacts accordingly to mitigate the issue without compromising the mission.






## __Paper__
---
__Design of a Model-Based Failure Detection Isolation and Recovery System for Cubesats__ _(Javier Sanz Lobo et al.)_
[Paper link](https://www.eucass.eu/component/docindexer/?task=download&id=5646)
