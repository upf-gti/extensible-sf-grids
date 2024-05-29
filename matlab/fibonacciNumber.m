function [ FN_Current ] = fibonacciNumber( N )
%FIBONACCINUMBER Return the Nth Fibonacci number
%   N is the index of the Fibonacci number we want to compute

if( (N<0) || (floor(N)~=N) )
    disp('The index of the desired Fibonacci number must be a positive integer');
    return;
elseif (N==0)
    FN_Current=0;
elseif (N<3)
    FN_Current=1;
else
   FN_Last    = 1; % Last Fibonacci number (F1)
   FN_Current = 1; % Current Fibonacci number (F2)
   i=2;            % Index of the current Fibonacci number 
   
   while i < N
       aux = FN_Current;
       FN_Current = FN_Last + FN_Current;
       FN_Last = aux;  
       i = i+1;
   end
end

end