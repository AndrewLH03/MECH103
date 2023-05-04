f = @(x) x^3 - 6 * x^2 + 11 * x - 6.1;

x1 = 3;
o = 0.01;

for i = 1:3

x1 = x1 - (f(x1) * o * x1) / (f(x1 + o * x1) - f(x1));

end

x1
i