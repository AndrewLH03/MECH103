function [] = ellipsePlot_v3(a,b,color)
%ellipsePlot Generates the plot of an ellipse given the major and minor
%axis radii
%   Inputs:
%       a - x axis radius (can be either major or minor)
%       b - y axis radius (can be either major or minor)
%       color - an optional input of a string to specify the color of the
%       plot. If no option is specified, defaults to blue
%   Outputs:
%       Generates a plot that shows the ellipse and the foci of the ellipse
%       (red stars)

if a>b % implies that a is major axis (major axis in x-dir)
    
    % Setup the x array
    x = -a:0.01:a;

    % Calculate y-values and foci using subfunction
    [f1,f2,y1,y2]=getValues(a,b,x);
    
    % Plot foci
    f1Plot = plot(f1,0,'r*');
    hold on
    f2Plot = plot(f2,0,'r*');
    
    % Plot ellipse
    y1Plot = plot(x,y1);
    y2Plot = plot(x,y2);

else % else b is the major axis (major axis in y-dir)

    % Setup the x arrary for minor axis
    x = -b:0.01:b;

    % Calculate y-values and foci using subfunction
    [f1,f2,y1,y2]=getValues(b,a,x);
    
    % Plot foci
    f1Plot = plot(0,f1,'r*');
    hold on
    f2Plot = plot(0,f2,'r*');
    
    % Plot ellipse
    y1Plot = plot(y1,x);
    y2Plot = plot(y2,x);

end

axis equal

% Change color if user specified
if nargin > 2
    y1Plot.Color = color;
    y2Plot.Color = color;
else
    y1Plot.Color = 'Blue';
    y2Plot.Color = 'Blue';
end


% Plot parameters
f1Plot.LineWidth = 2;
f2Plot.LineWidth = 2;
y1Plot.LineWidth = 1.5;
y2Plot.LineWidth = 1.5;
grid
grid minor
xlabel('x-axis')
ylabel('y-axis')
title('Ellipse Plotter v3')
legend('Focal Points')
hold off

end

function [f1,f2,y1,y2] = getValues(major,minor,x)
% Subfunction for calculating the foci and y values
    d = sqrt(major^2-minor^2);
    f1 = d;
    f2 = -d;
    y1 = minor*sqrt(1-x.^2/major^2);
    y2 = -minor*sqrt(1-x.^2/major^2);
end

