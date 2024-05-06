function retval = word_idx (distinct_wds)
	n = length(distinct_wds);
	values = [1 : n];
	retval = containers.Map(distinct_wds, values);
endfunction
