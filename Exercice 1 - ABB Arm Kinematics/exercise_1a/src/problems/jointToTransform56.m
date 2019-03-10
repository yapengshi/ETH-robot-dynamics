function T56 = jointToTransform56(q)
  % Input: joint angles
  % Output: homogeneous transformation Matrix from frame 6 to frame 5. T_56
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  alpha = -q(6);
  
  n = [1;0;0];
  r = [0.072;0;0];
  C56 = cos(alpha)*eye(3) - sin(alpha)*cross_op(n) + (1-cos(alpha))*n*transpose(n);
  T56 = [C56 r; 0 0 0 1];
end
