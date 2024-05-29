function [ kmin ] = kopt( N )
%KOPT Computes the index of the smaller basis vector on a SFG
%   Detailed explanation goes here

goldenA = (1+sqrt(5)) / 2;
kmin = round(log(5*N*N + 1)/(4*log(goldenA)));

end

