function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
% linearRegression: Compute the linear regression of a data set
%   Compute the linear regression based on inputs:
%     x: x-values for our data set
%     y: y-values for our data set
%
%   Outputs:
%     fX: x-values with outliers removed
%     fY: y-values with outliers removed
%     slope: slope from the linear regression y=mx+b
%     intercept: intercept from the linear regression y=mx+b
%     Rsquared: R^2, a.k.a. coefficient of determination

% Checking for if the length of data sets are the same
if length(x) ~= length(y)
    error('Vectors are not the same size.');
end

% Sorting the data sets in ascending order
[fY, sortOrder] = sort(y);
fX = x(sortOrder);

% Declaring and Initializing variables
n = length(fX);

% Calculating the quartile ranges to eliminate outliers
quartileOne = floor((n + 1) / 4);
quartileFour = floor((3 * n + 3) / 4);

Q1 = fY(quartileOne);
Q3 = fY(quartileFour);

IQR = Q3 - Q1;
UF = Q3 + IQR * 1.5;
LF = Q1 - IQR * 1.5;

outlierVec = UF < fY | fY < LF;

% Creating vector for storing outliers to eliminate later
fX(outlierVec) = [];
fY(outlierVec) = [];

% Calculating variables for linear regression
sxy = sum(fX .* fY);
sx = sum(fX);
sy = sum(fY);
sx2 = sum(fX.^2);
sy2 = sum(fY.^2);

%%Fit Regression Line
slope = (n * sxy - sx * sy) / (n * sx2 - sx^2);
intercept = mean(fY) - slope * mean(fX);

%%Find R^2
sumSquareRes = sum((fY - intercept - slope .* fX).^2);
sumSquareMean = sum((fY - mean(fY)).^2);

Rsquared = 1 - sumSquareRes / sumSquareMean;

end
