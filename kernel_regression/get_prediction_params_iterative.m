function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  [m m] = size(K);
  matrix = zeros(size(K));
  matrix = lambda * eye(m, m) + K;
  b = lambda * y;
  x0 = zeros(m, 1);

  % matrix * a = b, a is the solution
  a = conjugate_gradient(matrix, b, x0, 0.000001, 30);
endfunction
