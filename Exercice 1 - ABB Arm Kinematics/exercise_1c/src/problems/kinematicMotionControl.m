function [ Dq ] = kinematicMotionControl(q, r_des, v_des)
% Inputs:
%  q          : current configuration of the robot
% r_des       : desired end effector position
% v_des       : desired end effector velocity
% Output: joint-space velocity command of the robot.

K_p = 5;
lambda = 0.1;

% Compute the updated joint velocities. This would be used for a velocity controllable robot
% TODO:
r_current = jointToPosition(q);
J_current = jointToPosJac(q);
v_command = v_des + K_p*(r_des - r_current);
%Dq = pseudoInverseMat(J_current, lambda) - r_des; %not sure


end
