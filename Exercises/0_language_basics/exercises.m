% Exercise 1 Cost Function:
function cost = squaredErrorCost(A, b, x)
  cost = norm( A * x - b ) .^ 2;
endfunction


% Exercise 2 Gradient Descent:
function A_inv_b = matrixInverseVector(A, b, x_init, alpha)

  x = x_init;
  cost = ( norm( A * x - b ) ^ 2 );

  while cost >= 0.000001
    gradient = 2 * A * ( A * x - b );
    x = x - alpha * gradient;
    cost = ( norm( A * x - b ) ^ 2 );
  end

  A_inv_b = x;
end
