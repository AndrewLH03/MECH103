%Given Data
x = [0 5 10 15 20 25 30];
y = [0 9 13 14 10.5 12 5];
theta = [0.5 1.4 0.75 0.9 1.3 1.48 1.5];

%Function for work when given force and angle applied
func = @(y, theta) y * cos(theta); 
%Function for trapezoidal rule
Integ = @(x, fA, fB) ((x(end) - x(1)) * (fA + fB)) / 2;

%Evaluating needed y's based on semgnent's x's
fA = func(y(1), theta(1));
fB = func(y(end), theta(end));

%Finding area of domain
Integ(x, fA, fB)