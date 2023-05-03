function [] = tanarasProblem(a, b, color)
x = -1:0.01:1;    

y1 = b * sqrt(1-x.^2 / a^2);
y2 = -b * sqrt(1-x.^2 / a^2);



if(nargin < 3)
    color = b;
end

y = sqrt(b * sqrt(1 - x.^2 / a^2));

plot(x , y, color)

end