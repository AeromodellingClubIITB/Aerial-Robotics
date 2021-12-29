function [ u1, u2 ] = controller(~, state, des_state, params)
%CONTROLLER  Controller for the planar quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [y; z], state.vel = [y_dot; z_dot], state.rot = [phi],
%   state.omega = [phi_dot]
%
%   des_state: The desired states are:
%   des_state.pos = [y; z], des_state.vel = [y_dot; z_dot], des_state.acc =
%   [y_ddot; z_ddot]
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls

g = params.gravity;
m = params.mass;
Ixx = params.Ixx;
l = params.arm_length;
minF = params.minF;
maxF = params.maxF;

yz = state.pos;
yz_dot = state.vel;
phi = state.rot;
phi_dot = state.omega;

yzd = des_state.pos;
yzd_dot = des_state.vel;
yzd_ddot = des_state.acc;

kpz = 0; %tune all these variables
kvz = 0;

kpy = 0;
kvy = 0;

kpo = 0;
kvo = 0;

u1 = 0;
u2 = 0;

% FILL IN YOUR CODE HERE

% Implement 2D PD controller here so that the simulated quadrotor can follow traj_diamond.m trajectory.


end

