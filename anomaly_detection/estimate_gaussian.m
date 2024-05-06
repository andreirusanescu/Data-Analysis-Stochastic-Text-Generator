% Această funcție va determina media și varianța pentru datasetul dat.
function [mean_values variances] = estimate_gaussian(X)
    [m n] = size(X);
    mean_values = zeros(1, n);
    variances = zeros(n, n);

    % mean values formula: 
    for i = 1 : n
      mean_values(i) = 1 / m  * sum(X(:, i));
    endfor

    % variances matrix formula:
    for i = 1 : m
      variances = variances + (X(i, :) - mean_values)' * (X(i, :) - mean_values);
    endfor
    variances = 1 / m * variances;
endfunction
