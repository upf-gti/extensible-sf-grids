function [ km ] = nBasisVectors( N )
%NBASISVECTORS Computes the number of basis vectors in a Fibonacci grid with size N
%   Detailed explanation goes here

% Compute the index km of the largest Fibonacci number Fkm such that Fkm < N
%  i.e., the number of basis vectors for a point set with size N
km = 0;
while fibonacciNumber(km) < N
    km = km+1;
end
km = km-1;

end

