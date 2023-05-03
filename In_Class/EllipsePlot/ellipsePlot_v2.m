function [] = ellipsePlot_v2(a,b,color)
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

if a>b % implies that a is major axis
    
    % Setup the x arrary
    x = -a:0.01:a;

    % Calculate y-values according to solution
    y1 = b*sqrt(1-x.^2/a^2);
    y2 = -b*sqrt(1-x.^2/a^2);

    % Calculate length to focal distance
    d = sqrt(a^2-b^2);
    f1 = d;
    f2 = -d;
    
    % Plot foci
    plot(f1,0,'r*','LineWidth',1.5)
    hold on
    plot(f2,0,'r*','LineWidth',1.5)
    
    % Plot ellipse
    y1Plot = plot(x,y1);
    y2Plot = plot(x,y2);

else % else b is the major axis

    % Setup the x arrary
    x = -b:0.01:b;

    % Calculate y-values according to solution
    y1 = a*sqrt(1-x.^2/b^2);
    y2 = -a*sqrt(1-x.^2/b^2);

    % Calculate length to focal distance
    d = sqrt(b^2-a^2);
    f1 = d;
    f2 = -d;
    
    % Plot foci
    plot(0,f1,'r*','LineWidth',1.5)
    hold on
    plot(0,f2,'r*','LineWidth',1.5)
    
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
y1Plot.LineWidth = 1.5;
y2Plot.LineWidth = 1.5;
grid
grid minor
xlabel('x')
ylabel('y')
title('Ellipse Plot')
hold off

end