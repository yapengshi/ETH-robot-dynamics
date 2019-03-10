function T01 = jointToTransform01(q)
  % Input: joint angles
  % Output: homogeneous transformation Matrix from frame 1 to frame 0. T_01
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  alpha = -q(1);
  n = [0;0;1];
  r = [0;0;0.145];
  C01 = cos(alpha)*eye(3) - sin(alpha)*cross_op(n) + (1-cos(alpha))*n*transpose(n);
  T01 = [C01 r; 0 0 0 1];
  
end