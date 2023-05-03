
xL = 8;
xU = 9;
i = 0;

P = 6;
T = 323.15;
R = 0.08206;
a = 3.59;
b = 0.0427;
n = 2;

approxError = @(xL, xU) abs(xU - xL) / xU * 100;
VanderWaals = @(x) x * cos(30) + 40 * cos(45) - x * cos(45) - 40;
f = @(x) x * cos(30) + 40 * cos(45) - x * cos(45) - 40;

Ea = approxError(xL, xU);

while Ea > 0.1
i = i+1;

xR = (xL + xU) / 2;
yR = VanderWaals(xR);

if yR < 0
    xL = xR;
else
    xU = xR;
end

Ea = approxError(xL, xU)
end

i