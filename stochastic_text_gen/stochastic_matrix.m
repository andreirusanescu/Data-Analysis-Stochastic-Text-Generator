function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
	% build the stochastic matrix. Bonus if it is sparse
	% The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
	% It should just be entry-wise
	% This is how the checker tests it, to not have to deal with floating point errors

	% The stochastic matrix is held economically
	% using a sparse matrix

	% matrix has the sizes of the total unique elements
	m = length(k_secv_set);
	n = length(words_set);
	retval = sparse(m, n);
	steps = length(k_secv_corpus);

	% iterating through sequences
	for i = 1 : steps
		secv = k_secv_corpus{i};
		
		% getting the index of the sequence from the unique array
		secv_index = find(strcmp(secv, k_secv_set), 1);

		next_word = corpus_words{i + k};
		word_index = find(strcmp(next_word, words_set), 1);

		% increment the value for the feature secv
		% and corresponding label
		++retval(secv_index, word_index);
	endfor
endfunction
