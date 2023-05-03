function [avgTemp] = hw3AverageTemp()

meanTemp = 12.5;
peakTemp = 17.6;
freq = 2 * pi / 365;
peakDay = 205;
t = 180:242;

avgTemp = meanTemp + (peakTemp - meanTemp) * cos(freq * (t - peakDay));
end

