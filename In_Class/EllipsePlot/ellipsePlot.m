function [] = ellipsePlot(a,b,color)
%ellipsePlot Generates the plot of an ellipse given the major and minor
%axis radii
%   Inputs:
%       a - major axis radius
%       b - minor axis radius
%       color - an optional input of a string to specify the color of the
%       plot
%   Outputs:
%       Generates a plot that shows the ellipse and the foci of the ellipse
%       (red stars)

% forces all ellipses to be major in the horizontal direction
if b>a
    temp_b = b;
    b = a;
    a = temp_b;
end

% Setup the x arrary
x = -a:0.01:a;

% Calculate y-values according to solution
y1 = b*sqrt(1-x.^2/a^2);
y2 = -b*sqrt(1-x.^2/a^2);

y1Plot = plot(x,y1);
hold on
y2Plot = plot(x,y2);

% Change color if user specified
if nargin > 2
    y1Plot.Color = color;
    y2Plot.Color = color;
else
    y1Plot.Color = 'Blue';
    y2Plot.Color = 'Blue';
end


% Calculate length to focal distance
d = sqrt(a^2-b^2);

f1 = d;
f2 = -d;

% Plot foci
plot(f1,0,'r*','LineWidth',1.5)
plot(f2,0,'r*','LineWidth',1.5);

% Plot parameters
y1Plot.LineWidth = 1.5;
y2Plot.LineWidth = 1.5;
grid
grid minor
xlabel('x')
ylabel('y')
title('Ellipse Plot')
hold off

end