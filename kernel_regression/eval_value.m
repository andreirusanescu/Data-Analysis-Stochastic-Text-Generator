function pred = eval_value(x, X, f, f_param, a)
  % computes the prediction using all the input
  % vectors and a kernel function for a vector x

  [m n] = size(X);
  pred = 0;
  for i = 1 : m
    pred = pred + a(i) * f(X(i, :), x, f_param);
  endfor
endfunction
