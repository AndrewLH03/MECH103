function [A] = Test(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
while nargin ~= 2
    fprinf('error: Not sufficient input')
    n = input('Please enter in n')
    m = input('Please enter in m')
end

A = zeros(n,m)

% Now the real challenge is to fill in the correct values of A
for i = 1:n
    for j = 1:m
        if i == 1
            A(i,j) = j;
        end
        if j == 1
            A(i,j) = i;
        end
        if i ~= 1 && j ~= 1
            A(i,j) = A(i-1,j) + A(i,j-1);
        end
        
    end
end
end
% Things beyond here are outside of your function
