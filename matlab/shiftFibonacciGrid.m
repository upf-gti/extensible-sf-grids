function [ shiftedGrid ] = shiftFibonacciGrid( grid, vector )
%SHIFTFIBONACCIGRID Summary of this function goes here
%   Detailed explanation goes here

nPoints = length(grid);
shiftedGrid = grid;

for i=1:nPoints
    shiftedGrid(:,i) = grid(:,i) + vector';
end

shiftedGrid(2,:) = mod(shiftedGrid(2,:), 1);

end

