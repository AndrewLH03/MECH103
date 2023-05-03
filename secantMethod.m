f = @(x) x^3 - 6 * x^2 + 11 * x - 6.1;

x1 = 2.5;
x2 = 3.5;

for i = 1:3

x3 = x1 - f(x1) * ((x2 - x1) / (f(x2) - f(x1)));

x1 = x2;
x2 = x3;

end

x2
i