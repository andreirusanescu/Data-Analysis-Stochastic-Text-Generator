% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    [m n] = size(probabilities);
    start = min(probabilities);
    final = max(probabilities);
    step = (final - start) / 1000;

    % looping through a thousand eps values to find the best one
    for eps = start : step : final

        % if probabilities(i) < eps, prediction(i) = 1
        prediction = probabilities < eps;

        [false_positives, false_negatives, true_positives] = check_predictions(prediction, truths);
        [precision recall F1] = metrics(true_positives, false_positives, false_negatives);

        % update best_F1
        if F1 > best_F1
            best_F1 = F1;
            best_epsilon = eps;
            associated_precision = precision;
            associated_recall = recall;
        endif
    endfor
endfunction
