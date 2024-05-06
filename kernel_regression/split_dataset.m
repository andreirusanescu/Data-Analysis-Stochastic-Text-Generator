function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  n = length(X);
  train_size = round(percentage * n);

  % splitting the data in 2 sets,
  % one for trainging, the other for test

  X_train = X(1 : train_size, :);
  y_train = y(1 : train_size);
  X_pred = X(train_size + 1 : n, :);
  y_pred = y(train_size + 1 : n);
endfunction
