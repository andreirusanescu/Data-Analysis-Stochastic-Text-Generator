% Această funcție calculează densitatea de probabilitate pentru datasetul dat.
function probability = gaussian_distribution(X, mean_value, variance)
		[m, n] = size(X);
		probabilities = zeros(m, 1);

		% probability is built using 2 variables,
		% one for the denominator, the other for the numerator

		norm_factor = ((2 * pi) ^ (n / 2)) * sqrt(det(variances));
		exp_factor = zeros(m, 1);
		inv_var = inv(variances);
		for i = 1 : m
			diff = X(i, :) - mean_values;
			exp_factor(i) = -0.5 * diff * inv_var * diff';
			probabilities(i, 1) = (1 / norm_factor) * exp(exp_factor(i));
		endfor
endfunction
