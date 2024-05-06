function [a] = get_prediction_params (K, y, lambda)
  % computes a, column vector for final prediction

  [m m] = size(K);
  matrix = lambda * eye(m) + K;

  % the matrix is positive semi-definite
  if all(eig(matrix) >= 0)
    L = cholesky(matrix);
    inv_L = get_lower_inverse(L);
    a = lambda * inv_L' * inv_L * y;
  endif
endfunction
