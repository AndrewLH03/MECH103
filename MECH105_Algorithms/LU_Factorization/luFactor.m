function [L, U, P] = luFactor(A)
% luFactor(A): LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix

    % Check for correct size of matrix
    [r,c] = size(A);
    if r~=c
        error('Must be a square matrix for LU Factorization');
    end
    
    % Setting variable
    n = length(A);
    
    % Creating upper and lower triangular matrices
    L = eye(n);
    U = A;
    P = eye(n);
    
    for i = 1:n - 1
        
        % Find the index of the matrix with the largest value
        [maxVal, maxIndex] = max(abs(U(i:end,i)));
        maxIndex = maxIndex + i - 1;
        
        % Sort matrices based on the maxIndex by "swapping"
        U([i maxIndex], :) = U([maxIndex i], :);
        P([i maxIndex], :) = P([maxIndex i], :);
        
        if i > 1
            L([i maxIndex], 1:i-1) = L([maxIndex i], 1:i-1);
        end
        
        % Eliminate element
        for j = i + 1:n
            L(j,i) = U(j,i) / U(i,i);
            U(j,:) = U(j,:) - U(i,:) * L(j,i);
        end
    end
end