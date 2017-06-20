function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
  %GRADIENTDESCENTMULTI Performs gradient descent to learn theta
  %   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
  %   taking num_iters gradient steps with learning rate alpha

  % Initialize variables
  m = length(y); % number of training examples
  n = size(X, 2); % number of features (+ 1)
  J_history = zeros( num_iters, 1 );

  for iter = 1:num_iters
      % Perform a single gradient step on the parameter vector theta.

      %  tmp = theta;
      %  for i=1:n;
      %	  tmp(i) = theta(i) - ( alpha / m * sum( ( ( X * theta ) - y ) .* X( : , i ) ) );
      %  end;
      %  theta = tmp;

      delta = ( ( theta' * X' - y' ) * X )';
      theta = theta - alpha / m * delta;

      % Save the cost J in every iteration
      J_history(iter) = computeCostMulti(X, y, theta);
  end
end
