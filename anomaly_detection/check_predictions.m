function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    false_pozitives = 0;
    false_negatives = 0;
    true_pozitives = 0;
    n = length(predictions);
    for i = 1 : n
      if predictions(i) == 1 && truths(i) == 1
        ++true_pozitives;
      elseif predictions(i) == 1 && truths(i) == 0
        ++false_pozitives;
      elseif predictions(i) == 0 && truths(i) == 1
        ++false_negatives;
      endif
    endfor
endfunction
