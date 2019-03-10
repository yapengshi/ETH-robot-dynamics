function I_r_IE = jointToPosition(q)
  % Input: joint angles
  % Output: position of end-effector w.r.t. inertial frame. I_r_IE
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  transf1 = getTransformI0();
  transf2 = getTransform6E();
  transf3 = jointToTransform01(q);
  transf4 = jointToTransform12(q);
  transf5 = jointToTransform23(q);
  transf6 = jointToTransform34(q);
  transf7 = jointToTransform45(q);
  transf8 = jointToTransform56(q);
  
  transf = transf1*transf2*transf3*transf4*transf5*transf6*transf7*transf8;
  
  I_r_IE = transf(1:3,4);
 
end