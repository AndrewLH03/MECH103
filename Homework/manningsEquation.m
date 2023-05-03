function[velo] = manningsEquation()

chanSlope = [0.0001, 0.0002, 0.0012, 0.0007, 0.0003];
roughCoe = [0.036, 0.020, 0.015, 0.030, 0.022];
width = [10, 8, 20, 25, 15];
height = [2, 1, 1.5, 3, 2.6];

velo = sqrt(chanSlope) ./ roughCoe .* (width .* height ./ (width + 2 * height)).^(2/3);
end