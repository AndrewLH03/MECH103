k1 = 40000;
k2 = 40;
m = 95;
g = 9.81;
h = 0.43;

f = @(d) (2 * k2 * d^(5/2)) / 5 + (0.5 * k1 * d^2) - (m * g * d) - (m * g * h);

x1 = 3;
ea = 100;

while ea > 0.0001

x3 = x1 - f(x1) * ((x2 - x1) / (f(x2) - f(x1)));

x1 = x2;
x2 = x3;

ea = abs(x2 - x1) / x2 * 100;
end

x2
i