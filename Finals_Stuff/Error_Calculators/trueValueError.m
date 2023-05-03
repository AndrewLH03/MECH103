% Andrew Holland
% True Value Error Calculator
% Given two values, find the true error between them

function[error] = trueValueError(true, approx)
    error = abs(true - approx);
end