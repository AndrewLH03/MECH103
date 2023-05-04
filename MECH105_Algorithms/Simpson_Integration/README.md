# Simpson's Integration
## Description
**Contains an numerical integration method script to approximate the integral of a function using Simpson's 1/3 Rule and the trapezoidal rule**

## Specifics of Function

*Inputs:*
- x = vector of equally space independent variables
- y = vector of function values with respect to x

*Outputs:*
- I = numerical integral calculated

## Example:
After giving a vector of evenly space variables and the y-vales associated with them, it will use Simpson's 1/3 rule for all segments, except if there are an odd number of segments where it will then use the trapezoidal rule for the final segment
When given:

x = [140 141 142 143 144 145 146 147 148 149]
y = [15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75]

It will return:

I = 149.995
