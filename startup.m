clear; close all; clc;
load wide_trajectory.mat
om=2*pi/25;
yaw = om*t;
yaw_des = timeseries(yaw,t);