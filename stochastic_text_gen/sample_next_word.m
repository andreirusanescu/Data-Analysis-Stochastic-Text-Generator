function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  % return scaled or unscaled probabilities (line of the stochastic matrix) corresponding to the last k-squence of text
  k_secv_corpus = k_secv(text, k);
  index = k_secv_idx(k_secv_corpus{end});
  probs = stoch(index, :);
endfunction
