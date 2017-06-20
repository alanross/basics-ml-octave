function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% Init variables
g = zeros(size(z));

% Compute the sigmoid of each value of z (z can be a matrix, vector or scalar).

g = 1.0 ./ ( 1.0 + exp( -1 * z ) );

end
