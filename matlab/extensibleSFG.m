function [ fullGrid ] = extensibleSFG( NInit, l )
%EXTENSIBLESFG Summary of this function goes here
%   NInit is the initial number of points in the Fibonacci grid
%   l is the number of subdivision levels


% Create the initial Fibonacci grid
[ fullGrid ] = fibonacciGrid( NInit );

% Compute the 3 basis vectors
b0 = basisVector( 0, NInit );
b1 = basisVector( 1, NInit );
b2 = basisVector( 2, NInit );

[ k_2x ] = vector_double_step( NInit );
% k_2x = 1;

for i=1:l
    % Create the shifted Fibonacci grid (level-2 points)
    d = 2^i;
    [ gridL2_0 ] = shiftFibonacciGrid( fullGrid, b0./d );
    [ gridL2_1 ] = shiftFibonacciGrid( fullGrid, b1./d );
    [ gridL2_2 ] = shiftFibonacciGrid( fullGrid, b2./d );

    % Put all the point together in a single grid
    if k_2x == 0
        fullGrid = [fullGrid gridL2_0 gridL2_1 gridL2_2];
    elseif k_2x == 1
        fullGrid = [fullGrid gridL2_1 gridL2_2 gridL2_0 ];
    else
        fullGrid = [fullGrid gridL2_2 gridL2_0 gridL2_1];
    end
end

% Final shift
finalDelta = 1 / (2^(l+1) * NInit);
fullGrid(1,:) = fullGrid(1,:) + finalDelta;

end

