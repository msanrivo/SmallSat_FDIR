%% Adding Required Paths
addpath('Tools/Initialization');
addpath ('Tools/Thruster');
addpath('Tools/Transformations');
addpath('Tools/Visualization');
%% Initialice the simulation
Dynamics
CubeSat_Properties

Sensors
Actuators

Control

FDIR
open_system('AOCS_FDIR.slx')
