% Andrew Holland
% Taylor Series Practice
% With a user inputted function, domain, and stopping criteria, create a
% Taylor Series and give the True Relative Error

function [valueGuess] = taylorSeries(startPoint, guessValue, func, stopCrit)

addpath('Error_Calculators\');

    syms x
    symFunc = sym(func, x);

    if nargin < 4
        error('Not enough / too many parameters were passed.');
    end
    
    valueGuess = 0;
    error = 100;
    n = 0;
    
    while error > stopCrit
        
        diffFunc = diff(symFunc, x, n);
        useFunc = matlabFunction(diffFunc);


        valueGuess = valueGuess + useFunc(startPoint) * abs(guessValue - startPoint)^n / factorial(n);

        if n > 0
            error = approxError(approxLast, valueGuess);
        end

        n = n + 1;
        approxLast = valueGuess;taylor
    end

rmpath('Error_Calculators\');

end