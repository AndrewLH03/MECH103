% Andrew Holland
% True Value Error Calculator
% Given two values, find the true relative error between them

function[error] = approxError(approxLast, approxNew)
   error = abs(approxLast - approxNew) / approxLast * 100;
end
