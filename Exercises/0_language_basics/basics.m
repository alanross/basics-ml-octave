%---------------------------------------------------------------------------
% OCTAVE BASICS
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
% Touble shooting
%---------------------------------------------------------------------------
% if plotting does not work: setenv('GNUTERM','qt')

%---------------------------------------------------------------------------
% Variables
%---------------------------------------------------------------------------
a = 3;
b = 'hi';
c = (3>=1); -> 1 (boolean is 0 or 1)
d=pi; (global constant)

format short -> 3.1416
format long -> 3.14159265358979

%---------------------------------------------------------------------------
% Matrix & Vectors
%---------------------------------------------------------------------------

A =[ 1 2; 3 4; 5 6] % creates matrix. ';' separates rows, 'space' separates cols
v = [1;2;3] % creates vector

v = 1:0.5:2 % creates values from 1 to 2 in 0.5 increments -> v = 1.0 1.5 2.0
v = 1:6 % same thing but in 1 increments -> v = 1   2   3   4   5   6

A = ones(2,3) % results in
% A =
%   1   1   1
%   1   1   1

B = zeros(2,3) % results in
% B =
%  0   0   0
%  0   0   0

C = 2 * ones(2,3) % results in
% C =
%  2   2   2
%  2   2   2

D = rand(2,2) % D = matrix with random numbers min = 0, max = 1

E = randn(2,2) % E = same thing but numbers come from Gauss distribution

F = eye(5) % create identity matrix

G = -6 + sqrt(10)*(randn(1,10000)); % creates a very large vector

size(A) % 2,3 (rows, cols)
length(A) % 3 returns higher val (row:2, col:3)


% read and write:
v = A(firstRowIndex:lastRowIndex) % take the rows defined as params and put into new var
A(1,2) % -> get element of matrix in 1 row, 2 col
A(1,:) % -> get all elements of matrix A in 1 row
A(:,1) % -> get all elements of matrix A in 1 col
A([1 3],:) % -> get all elements of matrix A in 1 and 3 row
A(:,2) = [10; 11; 12] % -> overwrite all elements in 2 col with new vector
A(2,2) = 30 % -> overwrite 2 row, 2 col with new val
A = [A [100; 101; 102]] % -> append column to matrix
A = [B C] or A = [B, C] % -> concatenate adding more columns
A = [B; C] % -> concatenate adding more rows

% math operations
A * B % -> multiply matrices
A .* B % -> multiply elements with each other in matrices


%---------------------------------------------------------------------------
% Functions
%---------------------------------------------------------------------------
disp(a); -> console.log
who -> show all vars we have
whos -> same but with more detail
clear varname -> delete the var

%---------------------------------------------------------------------------
% IO
%---------------------------------------------------------------------------
load filename.dat or load('filename.dat')
save filename varnameToWriteIntoFile
save filename varnameToWriteIntoFile -ascii


%---------------------------------------------------------------------------
% Plotting
%---------------------------------------------------------------------------
G = -6 + sqrt(10)*(randn(1,10000)); % creates a very large vector
hist(G) % plots this vector
hist(G,50) % plots this vector with finer granularity

subplot(1,2,1) % divide plotting area into 1x2 grid and plot something into first grid cell
subplot(1,2,2) % divide plotting area into 1x2 grid and plot something into second grid cell
imagesc(A) % plot matrix A something as image

%---------------------------------------------------------------------------
% Control statements
%---------------------------------------------------------------------------

for i=1:10,
  v(i) = 2^i;
end;

i = 1;
while i <= 5,
  v(i) = 100;
  i= i+1;
end;

i = 1;
while(true),
  v(i) = 999;
  i = i+1;
  if i ==6,
    break;
end;


%---------------------------------------------------------------------------
% Funcitons
%---------------------------------------------------------------------------
% definition of an octave function returning the var 'y'
function y = squareThisNumber(x)
  y = x^2;
end

% definition of an octave function returning the vars 'y1 and y2'
function [y1,y2] = squareAndCubeThisNumber(x)
  y1 = x^2;
  y2 = x^3;
end

function v = test2(A,x)
  v = zeros(10, 1);
  for i = 1:10
    for j = 1:10
      v(i) = v(i) + A(i, j) * x(j);
    end
  end
end

%---------------------------------------------------------------------------
% Vectorisation
%---------------------------------------------------------------------------
% Octave is great to vectorize algorithms
% as whole for loops can be replaced by simple matrix operations
