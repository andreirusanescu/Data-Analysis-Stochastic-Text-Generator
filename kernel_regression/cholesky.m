function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita
  n = length(A);
  L = zeros(n, n);

  L(1, 1) = sqrt(A(1, 1));
  L(2 : n, 1) = A(2 : n, 1) / L(1, 1);

  for i = 2 : n
    L(i, i) = sqrt(A(i, i) - sum(L(i, 1 : i - 1) .^ 2));

    % vectorization for all the elements from i + 1 row on the column i
    L(i + 1 : n, i) = (A(i + 1 : n, i) - L(i + 1 : n, 1 : i - 1) * L(i, 1 : i - 1)') / L(i, i);
  endfor
endfunction

