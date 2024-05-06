function B = k_secv (A, k)
	% given an array [a b a b c] and k=2
	% should return [ab ba ab bc]
	% returns consecutive sequences of k elements
	n = length(A);
	m = n - k;

	% for only one sequence
	if m == 0
		m = m + 1;
	endif

	B = cell(1, m);
	for i = 1 : m
		B{i} = strjoin(A(i : i + k - 1), ' ');
	endfor

	% column displayed:
	B = B';
endfunction
