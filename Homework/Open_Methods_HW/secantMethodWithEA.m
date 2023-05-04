w = 10;
y0 = 7;
x = 50;
y = 15;

f = @(Ta) (Ta / w) * cosh(w * x / Ta) + y0 - (Ta / w) - 15;

x1 = 3;
x2 = 3.1;
ea = 100;

while ea > 0.0001

x3 = x1 - f(x1) * ((x2 - x1) / (f(x2) - f(x1)));

x1 = x2;
x2 = x3;

ea = abs(x2 - x1) / x2 * 100;
end

x2
i