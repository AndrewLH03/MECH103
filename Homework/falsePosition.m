func = @(x) x * cos(30) + 40 * cos(45) - x * cos(45) - 40;
approxError = @(xL, xU) abs((xU - xL) / xU) * 100;

ea = 1;
i = 0;
xl = -1;
xu = 1;

maxit = 200;
es = 0.01;

while ea > es
    i = i + 1;
    
    x = xu - func(xu) * (xu - xl) / (func(xu) - func(xl));
    
    y = func(x);
    yl = func(xl);
    
    if yl < 0
        if y < 0
            xl = x;
        else
            xu = x;
        end
    else
        if y > 0
            xl = x;
        else
            xu = x;
        end
    end
    
    ea = approxError(xl, xu);
end

root = x;
fx = y;
iter = 1;

