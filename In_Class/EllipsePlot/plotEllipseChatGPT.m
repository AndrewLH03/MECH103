function plotEllipseChatGPT(majorAxis,minorAxis)

% Create an ellipse
x = linspace(-majorAxis,majorAxis,1000);
y = sqrt((minorAxis^2*(1-x.^2/majorAxis^2)));

% Plot the ellipse
plot(x,y);
hold on;
plot(x,-y);
axis equal;

% Label the foci points
plot(majorAxis,0,'r*');
plot(-majorAxis,0,'r*');
text(majorAxis,0,'F1');
text(-majorAxis,0,'F2');

end