# Bisection Method
## Description
**Contains a bisection method script to find the root of a function**

## Specifics of Function:

* Inputs: *
-   'func': passed function where root will be found on
-   'xl': passed lower bound
-   'xu': passed upper bound
-   'es': stopping criteria
-   'maxIt': maximum number of iterations
-   'varargin': number of variables passed

* Outputs: 
-   'fx' = y-value of root found
-   'ea' = approximate error found with root
-   'iter' = number of iterations to find root

## Example: 
The function, lower bound, and upper bound must be pass, but the stopping criteria and maximum iterations are optional and will be set to default values of "0.0001" for es and 200 for maxIt. 
An acceptable function would be "func = @(x) x.^2 - 1" with bounds of "0" and "2" where it would return "1.25"
