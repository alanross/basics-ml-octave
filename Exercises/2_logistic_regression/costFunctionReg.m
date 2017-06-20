function [J, grad] = costFunctionReg(theta, X, y, lambda)
  %COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
  %   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
  %   theta as the parameter for regularized logistic regression and the
  %   gradient of the cost w.r.t. to the parameters.

  % Initialize variables
  m = length(y); % number of training examples
  J = 0;
  grad = zeros( size( theta ) );

  % Compute the cost of a particular choice of theta. Set J to the cost.
  % Compute the partial derivatives and set grad to the partial
  % derivatives of the cost w.r.t. each parameter in theta

  % calculate cost function
  h = sigmoid( X * theta ); % 0 <= h <= 1

  % calculate penalty. Excluded the first theta value
  % Reminder: cols are different properties.
  % First col is always set with val 1.0
  theta1 = [0 ; theta(2:size(theta), :)];
  penalty = lambda * ( theta1' * theta1 ) / ( 2 * m );
  J = -( 1 / m ) * ( y' * log( h ) + ( 1 - y )' * log( 1 - h ) ) + penalty;

  % calculate gradients
  grad = ( X' * ( h - y ) + lambda * theta1 ) / m;
end
