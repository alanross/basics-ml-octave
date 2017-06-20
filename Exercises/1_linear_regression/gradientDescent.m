function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
  %GRADIENTDESCENT Performs gradient descent to learn theta
  %   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
  %   taking num_iters gradient steps with learning rate alpha

  % init variables
  m = length(y); % number of training examples

  J_history = zeros( num_iters, 1 );

  for iter = 1:num_iters
      % Perform a single gradient step on the parameter vector theta.

      theta = theta - alpha * ( 1 / m ) * ( X' * ( X * theta - y ) );

      % compute cost. Same as calling J = computeCost(X, y, theta);
      delta = X * theta - y;
      J = ( delta' * delta ) / ( 2 * m );

      % Save the cost J in every iteration
      J_history(iter) = J;
  end

  disp( min( J_history ) );
end
