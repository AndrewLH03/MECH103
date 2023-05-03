clear; clc;

%Given Data
x = [0 5 10 15 20 25 30];
y = [0 9 13 14 10.5 12 5];
theta = [0.5 1.4 0.75 0.9 1.3 1.48 1.5];

%Function for Work
func = @(y, theta) y * cos(theta); 
%Function for Trapezoidal rule
%Requires the first x (a), next x (b), function at (a), and function at (b)
Integ = @(xI, xF, fA, fB) ((x(end) - x(1)) * (fA + fB)) / 2;

%Can change n based on how many wanted segements
n = 1;
area = 0;

%Changes given data to the size needed based on num of segments
sizeSeg = (length(x) - 1) / n;
xNew = x(1:sizeSeg:end);
yNew = y(1:sizeSeg:end);
thetaNew = theta(1:sizeSeg:end);

%Loop to evaluate the area of all the segments and add them
for i = 1 : n
    fA = func(yNew(i), thetaNew(i));
    fB = func(yNew(i + 1), thetaNew(i + 1));

    area = area + Integ(xNew(i), xNew(i + 1), fA, fB);
    
end

area