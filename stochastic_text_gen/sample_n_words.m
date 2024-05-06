function retval = sample_n_words (text,  widx, kscvidx, k, stoch, word_set, n)
  % Sample word using sample_next_word from the last k elements of text (k-seq), ad it to the end of text
  % repeat n times
  % This function is not tested by the checker, it can be tested as a bonus by running `run tema1_script.m`
  for i = 1 : n
    probs = sample_next_word(text, widx, kscvidx, k, stoch);
    next_word = prob_choose(probs, word_set);

    % append the word to the text and update
    text = [text; next_word];
    k_secv_set = distinct_k_secv(k_secv(text, k));
    kscvidx = k_secv_idx(k_secv_set);

    if find(strcmp(next_word, text), 1) == 0
      word_set = [word_set; {next_word}];
      widx = word_idx(distinct_words(text));
    endif

  endfor
  retval = text;
endfunction
