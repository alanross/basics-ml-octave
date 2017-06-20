function J = computeCostMulti(X, y, theta)
  %COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
  %   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
  %   parameter for linear regression to fit the data points in X and y

  % Init variables
  m = length(y); % number of training examples
  J = 0;

  % Compute cost of a particular choice of theta. Set J to the cost.
  delta = ( X * theta - y );
  J = ( delta' * delta ) / ( 2 * m );
end
