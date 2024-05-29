function [ grid ] = fibonacciGrid( N )
%FIBONACCIGRID Return a Fibonacci grid
%   N is the number of points in the grid

goldenA = (1+sqrt(5)) / 2;
%shift = (1/(2*N)); % Optional

i = 0:1:N-1;
xCoords = i/N;% + shift;
yCoords = i/goldenA;
yCoords = yCoords - floor(yCoords);

grid = [xCoords; yCoords ];

end