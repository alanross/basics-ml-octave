function p = predict(Theta1, Theta2, X)
  %PREDICT Predict the label of an input given a trained neural network
  %   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
  %   trained weights of a neural network (Theta1, Theta2)

  % Init variables
  m = size(X, 1);
  num_labels = size(Theta2, 1);

  p = zeros(size(X, 1), 1);

  % Make predictions using your learned neural network.
  % Set p to a vector containing labels between 1 to num_labels.
  %
  % Hint: The max function might come in useful. In particular, the max
  %       function can also return the index of the max element, for more
  %       information see 'help max'. If your examples are in rows, then, you
  %       can use max(A, [], 2) to obtain the max for each row.

  h1 = sigmoid( [ones(m, 1) X] * Theta1' );
  h2 = sigmoid( [ones(m, 1) h1] * Theta2' );

  [val_max, index_max] = max( h2, [], 2 );

  p = index_max;
end
