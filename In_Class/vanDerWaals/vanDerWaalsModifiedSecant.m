
xI1 = 4;
xI2 = 0;

testxI1 = 4;
testXI2 = 0;

i = 0;
j = 0;

P = 6;
T = 323.15;
R = 0.08206;
a = 3.59;
b = 0.0427;
n = 2;

d = 10^-4;

approxError = @(xL, xU) abs(xU - xL) / xU * 100;
VanderWaals = @(V) (P + (n^2 * a) / V^2) * (V - (n * b)) - n * R * T;

Ea = 1;
testEa = 1;

while Ea > 0.001
i = i+1;

xI2 = xI1 - (d * VanderWaals(xI1)) / (VanderWaals(xI1 + d) - VanderWaals(xI1));
Ea = approxError(xI1, xI2);

disp('d');
disp(d);

xI1 = xI2;
end

while testEa > 0.001
j = j+1;

testxI2 = testxI1 - (d * testxI1 * VanderWaals(testxI1)) / (VanderWaals(testxI1 + testxI1 * d) - VanderWaals(testxI1));
testEa = approxError(testxI1, testxI2);

disp('Delta * xI1');
disp(testxI1 * d);

testxI1 = testxI2;
end

i
xI1
Ea

j
testxI1
testEa