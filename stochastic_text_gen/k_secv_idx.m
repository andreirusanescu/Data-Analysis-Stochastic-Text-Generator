function retval = k_secv_idx (distinct_k_sec)
  % computes dictionary containing the indices of
  % each elem from distinct_k_sec
  n = length(distinct_k_sec);

  % the indices:
  values = [1 : n];
  retval = containers.Map(distinct_k_sec, values);
endfunction
