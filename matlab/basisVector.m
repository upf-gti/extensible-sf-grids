function [ bk ] = basisVector( k, N )
%BASISVECTOR Returns the basis vector with index k of a Fibonacci grid with size N
%   k is the index of the basis vector
%   N is the number of points in the point set

% Compute the index km of the largest Fibonacci number Fkm such that Fkm < N
%  i.e., the number of basis vectors for a point set with size N
km =  nBasisVectors( N );

if (k > km)
    fprintf('Too large basis vector index (%d). For %d points, there are only %d basis vectors\n\n', ...
               k, N, km);
end

% Compute the kth basis vector
goldenA = (1+sqrt(5)) / 2;
bk = [fibonacciNumber(k)/N, ((-1)^(k-1)) / (goldenA^k) ];

end

