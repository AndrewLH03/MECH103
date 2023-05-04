f = @(x) x^3 - 6 * x^2 + 11 * x - 6.1;
fPrime = @(x) 3 * x^2 - 12 * x + 11;

x1 = 3.5;

for i = 1:3

x2 = x1 - f(x1) / fPrime(x1);
x1 = x2;
end

x1
i