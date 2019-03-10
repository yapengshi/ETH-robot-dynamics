function T12 = jointToTransform12(q)
  % Input: joint angles
  % Output: homogeneous transformation Matrix from frame 2 to frame 1. T_12
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  alpha = -q(2);
  
  n = [0;1;0];
  r = [0;0;0.145];
  C12 = cos(alpha)*eye(3) - sin(alpha)*cross_op(n) + (1-cos(alpha))*n*transpose(n);
  T12 = [C12 r; 0 0 0 1];
end