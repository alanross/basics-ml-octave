% X is the "design matrix" containing our training examples
% y is the class labels
function J = cost_function(X, y, theta)
  % number of training examples
  m = size( X, 1);

  % predutios of hypthesis of all m examples
  predictions = X * theta;

  %squared errors
  sqrErrors = (predictions - y).^2;

  J = 1 / ( 2 * m ) * sum( sqrErrors );
end
