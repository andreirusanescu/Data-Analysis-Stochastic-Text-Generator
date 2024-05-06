function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
  [n n] = size(L);
  P = eye(size(L));

  % Gauss - Jordan method: 
  for j = 1 : n
    % saves the values for L(j, j)
    denom = L(j, j);
    L(j, :) = L(j, :) / denom;
    P(j, :) = P(j, :) / denom;

    for i = j + 1 : n
      factor = L(i, j);
      L(i, :) = L(i, :) - factor * L(j, :);
      P(i, :) = P(i, :) - factor * P(j, :);
    endfor
  endfor
endfunction
