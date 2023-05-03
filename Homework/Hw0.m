L = 400;
E = 52000;
I = 32000;
w = 4;

x = 0:400;

distance = -(w / (48 * E * I)) * (2*x.^4 - 3*L * x.^3 + L^3 * x);

plot(x,distance)
xlabel('Distance')
ylabel('Deflection')
title('Distance vs. Deflection')

min(distance)


for i = 1:401
    if distance(i) == min(distance)
        indexof = i
    end
end
