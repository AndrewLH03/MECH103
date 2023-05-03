time = [10 15 20 25 40 50 55 60 75];
tStrength = [5 20 18 40 33 54 70 60 78];

n = length(time);

%%Fit Regression Line
a1 = (n * sum(time .* tStrength) - sum(time) * sum(tStrength)) / (n * sum(time.^2) - (sum(time)^2));
a0 = mean(tStrength) - a1 * mean(time);

scatter(time, tStrength), 'rx';
hold on
plot(time, a1 .* time + a0);

%%Find R^2
sumSquareRes = sum((tStrength - a0 - a1 .* time).^2);
sumSquareMean = sum((tStrength - mean(tStrength)).^2);

squareR = (sumSquareMean - sumSquareRes) / sumSquareMean;

disp(squareR)