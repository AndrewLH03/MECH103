function [I] = simpsonIntegration(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

% Set Variable
I = 0;

% Errors for length and uniform difference of x vector elements
if length(x) ~= length(y)
    error('Incorrectly length x or y vector');
end
if ~isuniform(x)
    error('x vector is not evenly spaced');
end

% Set n to the amount of points
n = length(x);

% Check for if even or odd number of segments
% # of Segments = # of Points - 1
if mod(n - 1, 2) == 0
    trapRule = 0;
else
    trapRule = 1;
    n = n - 1;
end
if n == 1
    trapRule = 2;
end

if trapRule ~= 2
    %Adding first and last term
    I = y(1) + y(n);
    
    %Adding all of the odd points
    for j = 2 : 2 : n - 1
         I = I + 4 * y(j);
    end
    
    %Adding all of the even points
    for k = 3 : 2 : n - 2
        I = I + 2 * y(k);
    end
    
    %Performing final calculations 
    % Multiply by h and divide by (num of points * 3)
    I = I * (x(n) - x(1)) / (3 * (n - 1));
end

% Check for if the trapezoidal rule needs to be used for final section
if trapRule ~= 0
    I = I + (x(end) - x(end - 1)) * (y(end) + y(end - 1)) / 2; 
    warning('Trap Rule was used for the last interval');
end


end