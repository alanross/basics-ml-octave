X = [1 1; 1 2; 1 3];
y = [1; 2; 3];
theta = [0; 1];

J = cost_function(X, y, theta);

disp(J);
