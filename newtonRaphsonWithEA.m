f = @(x) tanh(x^2 - 9);
fPrime = @(x) 2 * x * sech(x^2 - 9)^2;

x1 = 3.2;

for i = 1:3

x1 = x1 - f(x1) / fPrime(x1);

i
x1
end