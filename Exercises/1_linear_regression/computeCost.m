function J = computeCost(X, y, theta)
  %   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
  %   parameter for linear regression to fit the data points in X and y

  m = length( y ); % number of training examples

  % Compute cost of a particular choice of theta. Set J to the cost.
  % Vectorized version of J's computation.
  % Using element-wise square ( .^ ) instead of matrix multiplication ( ^ ).
  delta = X * theta - y;

  % same forumalar just less efficient: J = 1 / ( 2 * m ) * sum( delta .^ 2 );
  J = ( delta' * delta ) / ( 2 * m );
end
