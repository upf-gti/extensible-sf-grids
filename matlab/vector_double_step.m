function [ k_2x ] = vector_double_step( N )
%VECTOR_DOUBLE_STEP Summary of this function goes here
%   Detailed explanation goes here

k_opt = kopt( N );
bk_opt = basisVector( k_opt, N );
bk_opt_m1 = basisVector( k_opt-1, N );
bk_opt_p1 = basisVector( k_opt+1, N );
% tan_bk_opt = bk_opt(2)/bk_opt(1);

fprintf('\nk opt = %d', k_opt);

fprintf('\nk opt: [%f, %f] \t Length k opt = %f', bk_opt, norm(bk_opt));
fprintf('\nk opt - 1: [%f, %f] \t Length k-1 = %f', bk_opt_m1, norm(bk_opt_m1));
fprintf('\nk opt + 1: [%f, %f] \t Length k+1 = %f\n', bk_opt_p1, norm(bk_opt_p1));

if norm(bk_opt_m1) > norm(bk_opt_p1)
    k_l = k_opt - 1;
else
    k_l = k_opt + 1;
end

%
% Determine the coefficients of expressing b_k_l as a linear combination of
%  b_0 and b_1
% 
% Use new formula: b_k = F_k b1 + F_{k-1} b_0 , with F_k being the k^th
%                                                  Fibonacci number
% F_k_l    = fibonacciNumber( k_l );
% F_k_l_m1 = fibonacciNumber( k_l - 1);
%

s = mod(k_l, 3);
% if mod(k_l, 3) == 0
if s == 0
    % F_k_l is even, so b0 is the vector to divide in the 2x subdivision
    k_2x = 0;
% elseif mod(k_l-1, 3) == 0
elseif s == 1
    % F_k_l_m1 is even, so b1 is the vector to divide in the 2x subdivision
    k_2x = 1;
else
    % F_k_l and F_k_l_m1 are odd, so b2 is the vector to divide in the 2x subdivision
    k_2x = 2;
end
fprintf('\nThe basis vector for the 2x subdivision is b_%d\n\n', k_2x);

end

