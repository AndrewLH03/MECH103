x1 = 0.5;
ea = 100;
i = 0;

approxError = [];

while ea > 0.01
    x2 = x1;
    x1 = sin(sqrt(x2));

    ea = abs(x2 - x1) / x2 * 100;
    approxError = [approxError ea];
    i = i + 1;
end

plot(1:i, approxError)

x1
i