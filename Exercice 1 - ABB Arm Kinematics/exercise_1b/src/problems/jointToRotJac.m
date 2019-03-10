function J_R = jointToRotJac(q)
  % Input: vector of generalized coordinates (joint angles)
  % Output: Jacobian of the end-effector orientation which maps joint
  % velocities to end-effector angular velocities in I frame.

  % Compute the rotational jacobian.
  
  %Get transformation matrices T_k(k+1)
  T_I0 = getTransformI0();
  T_01 = jointToTransform01(q);
  T_12 = jointToTransform12(q);
  T_23 = jointToTransform23(q);
  T_34 = jointToTransform34(q);
  T_45 = jointToTransform45(q);
  T_56 = jointToTransform56(q);
  
  %Compute transformation matrices T_Ik
  T_I1 = T_I0*T_01;
  T_I2 = T_I1*T_12;
  T_I3 = T_I2*T_23;
  T_I4 = T_I3*T_34;
  T_I5 = T_I4*T_45;
  T_I6 = T_I5*T_56;

  %Extract rotation matrices from transformation matrices
  R_I1 = T_I1(1:3,1:3);
  R_I2 = T_I2(1:3,1:3);
  R_I3 = T_I3(1:3,1:3);
  R_I4 = T_I4(1:3,1:3);
  R_I5 = T_I5(1:3,1:3);
  R_I6 = T_I6(1:3,1:3);
  
  %Extract position vector from transformation matrices
  r_I_I1 = T_I1(1:3,4);
  r_I_I2 = T_I2(1:3,4);
  r_I_I3 = T_I3(1:3,4);
  r_I_I4 = T_I4(1:3,4);
  r_I_I5 = T_I5(1:3,4);
  r_I_I6 = T_I6(1:3,4);
  r_I_IE = jointToPosition(q);
  
  %Compute n_k in frame I
  I_n1 = R_I1 * [0 0 1]';
  I_n2 = R_I2 * [0 1 0]';
  I_n3 = R_I3 * [0 1 0]';
  I_n4 = R_I4 * [1 0 0]';
  I_n5 = R_I5 * [0 1 0]';
  I_n6 = R_I6 * [1 0 0]';
  
  J_R = [I_n1 I_n2 I_n3 I_n4 I_n5 I_n6];

end
