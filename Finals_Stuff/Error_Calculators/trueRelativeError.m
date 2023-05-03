% Andrew Holland
% True Value Error Calculator
% Given two values, find the true relative error between them

function[error] = trueRelativeError(true, approx)
   error = abs(true - approx) / true * 100;
end
