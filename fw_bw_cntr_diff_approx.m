x=-2:0.25:2;
for i=1:17
   forward(i) = (f(x(i) + 0.25) - f(x(i))) / 0.25;
   backward(i) = (f(x(i)) - f(x(i) - 0.25)) / 0.25;
   centered(i) = (f(x(i) + 0.25) - f(x(i) - 0.25)) / 0.5;
   func(i) = 6 * x(i);
end


plot(x,func, 'LineWidth', 5, 'Color', 'k')
hold on
plot(x,forward)

plot(x,backward)

plot(x,centered, 'Color', 'r')

title('Plot of Forward, Backwards, and Centered Difference Approximation');
xlabel('X-Values');
ylabel('Y-Values');
legend('Function', 'Forward', 'Backward', 'Centered');
hold off

function y=f(x)
   y = 3 * x^2 - 2;
end

