function [mag, crossProd, theta] = vectorDot_Cross()

a = [3 2 -6];
b = [4 -3 1];
crossProd = cross(a, b)

theta = acos(dot(a, b) ./ norm(a) ./ norm(b));
theta = theta * 180 / pi

mag = norm(crossProd)