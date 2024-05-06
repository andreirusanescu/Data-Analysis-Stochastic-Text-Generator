function retval = polynomial_kernel (x, y, d)
  % polynomial kernel function formula
   retval = (1 + y * x') ^ d;
endfunction
