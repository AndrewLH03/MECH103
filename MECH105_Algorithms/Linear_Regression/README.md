# Linear Regression
## Description
**Contains a script to create a linear regression line, as well as find the R^2 value**

## Specifics of Function:

*Inputs:*
- x: x-values for our data set
- y: y-values for our data set

*Outputs:*
- fX: x-values with outliers removed
- fY: y-values with outliers removed
- slope: slope from the linear regression y=mx+b
- intercept: intercept from the linear regression y=mx+b
- Rsquared: R^2, a.k.a. coefficient of determination

## Example: 
Given a vector of x and y values such as: 

x = [1 2 3 4 5 6] 
y = [1 2 1.3 3.75 2.5 100]

It will return:
fX = [1 3 2 5 4]
fY = [1 1.3 2 2.5 3.75]
slope = 0.4750
intercept = 0.6850
Rsquared = 0.4758
