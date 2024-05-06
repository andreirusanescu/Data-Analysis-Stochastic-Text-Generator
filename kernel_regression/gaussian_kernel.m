function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
  retval = exp(- (norm(x - y, 2) ^ 2) / (2 * sigma ^ 2));
endfunction
