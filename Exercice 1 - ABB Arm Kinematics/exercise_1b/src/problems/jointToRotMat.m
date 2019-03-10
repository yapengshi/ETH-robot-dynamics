function C_IE = jointToRotMat(q)
  % Input: joint angles
  % Output: rotation matrix which projects a vector defined in the
  % end-effector frame E to the inertial frame I, C_IE.
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  transf1 = getTransformI0();
  transf2 = getTransform6E();
  transf3 = jointToTransform01(q);
  transf4 = jointToTransform12(q);
  transf5 = jointToTransform23(q);
  transf6 = jointToTransform34(q);
  transf7 = jointToTransform45(q);
  transf8 = jointToTransform56(q);
  
  C_IE = transf1(1:3,1:3) * transf2(1:3,1:3) * transf3(1:3,1:3)...
       * transf4(1:3,1:3) * transf5(1:3,1:3) * transf6(1:3,1:3)...
       * transf7(1:3,1:3) * transf8(1:3,1:3);
end