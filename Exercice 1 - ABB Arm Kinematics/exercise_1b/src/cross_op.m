function vec_cross = cross_op(vec)
  
vec_cross = [0     -vec(3) vec(2);
              vec(3)    0   -vec(1);
             -vec(2) vec(1)    0];
        

end