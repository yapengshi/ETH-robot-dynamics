function R = quatToRotMat(q)
  % Input: quaternion [w x y z]
  % Output: corresponding rotation matrix
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  xi_0 = q(1)';
  xi = q(2:end)';
  
  R = eye(3) + 2*xi_0*cross_op(xi) + 2*cross_op(xi)^2;
  
end
