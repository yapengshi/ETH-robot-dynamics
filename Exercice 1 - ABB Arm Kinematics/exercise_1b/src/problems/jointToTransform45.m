function T45 = jointToTransform45(q)
  % Input: joint angles
  % Output: homogeneous transformation Matrix from frame 5 to frame 4. T_45
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  alpha = -q(5);
  
  n = [0;1;0];
  r = [0.168;0;0];
  C45 = cos(alpha)*eye(3) - sin(alpha)*cross_op(n) + (1-cos(alpha))*n*transpose(n);
  T45 = [C45 r; 0 0 0 1];
end

