% converting between matrix and vector representation
Theta1 = ones(10,11);
Theta2 = 2 * ones(10,11);
Theta3 = 3 * ones(1,11);

% make all a long vector
thetaVec = [Theta1(:); Theta2(:); Theta3(:) ];

%take first 110 elements and make 10x11 matrix
T1 = reshape( thetaVec(1:110), 10, 11 );

% take next 110 elements and shape into 1x11 Matrix
T2 = reshape( thetaVec(111:220), 10, 11 );

% take last 11 elements and shape into 1x11 Matrix
T3 = reshape( thetaVec(221:231), 1, 11);
