% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

% Define the function to be solved for. Is the angle specified in radians or degrees?
f = @(x) (mu * m * g) / (cos(x) + (mu * sin(x))) - 150;

% THINK, what makes range sense for angle?
xL = 0;
xU = 45;

% Plot your function. Does plotting give you an idea about where the root is?
fplot(f, [0 45])


% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations