clc
clear all
close all

q = [pi/6 pi/6 pi/6 pi/6 pi/6 pi/6];

I_r_IE = jointToPosition(q);
C_IE = jointToRotMat(q);

I_r_IE_des = I_r_IE - [0.4 0.2 0.3]';
C_IE_des = C_IE;

tol = 1;

q_0 = [pi/3 pi/3 pi/3 pi/3 pi/3 pi/3];

[ q_f ] = inverseKinematics(I_r_IE_des, C_IE_des, q_0, tol)