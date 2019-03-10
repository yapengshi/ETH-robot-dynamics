function T23 = jointToTransform23(q)
  % Input: joint angles
  % Output: homogeneous transformation Matrix from frame 3 to frame 2. T_23
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  alpha = -q(3);
  
  n = [0;1;0];
  r = [0;0;0.27];
  C23 = cos(alpha)*eye(3) - sin(alpha)*cross_op(n) + (1-cos(alpha))*n*transpose(n);
  T23 = [C23 r; 0 0 0 1];
end
