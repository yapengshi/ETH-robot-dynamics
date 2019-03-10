function q_AC = quatMult(q_AB,q_BC)
  % Input: two quaternions to be multiplied
  % Output: output of the multiplication
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  q = q_AB;
  p = q_BC;
  
  q_w = q(1); q_n = q(2:4);
  p_w = p(1); p_n = p(2:4);

  q_AC = [q_w*p_w - q_n'*p_n;
          q_w*p_n + p_w*q_n + cross_op(q_n)*p_n];
  
end

