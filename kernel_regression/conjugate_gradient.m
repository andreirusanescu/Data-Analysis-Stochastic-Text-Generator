function [x] = conjugate_gradient(A, b, x0, tol, max_iter)
    prev_x = x0;
    r = b - A * prev_x;

    % first direction is the residual
    d = r;
    k = 0;
    while norm(r) > tol && k < max_iter
      if k
        beta = r' * r / (prev_r' * prev_r);
        d = r + beta * prev_d;
      endif
      a = r' * r / (d' * A * d);
      x = prev_x + a * d;
      prev_r = r;
      r = prev_r - a * A * d;
      prev_x = x;
      prev_d = d;
      ++k;
    endwhile
endfunction

