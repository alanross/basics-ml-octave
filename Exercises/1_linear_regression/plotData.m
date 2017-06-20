function plotData(x, y)
  %PLOTDATA Plots the data points x and y into a new figure
  %   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
  %   population and profit.

  figure; % open a new figure window

  % 'rx' option with plot to have the markers appear as red crosses.
  % Furthermore, make markers larger by using plot(..., 'rx', 'MarkerSize', 10);
  plot( x, y, 'rx', 'MarkerSize', 5 ); % Plot the data

  % Set the axes labels using the "xlabel" and "ylabel" commands.
  % Assume population and revenue data are passed in as x and y arguments.
  xlabel( 'Population of City in 10,000s' ); % Set the x−axis label
  ylabel( 'Profit in $10,000s' ); % Set the y−axis label
end
