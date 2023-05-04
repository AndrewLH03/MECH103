#LU Factorization
##Description
**Contains an LU Factorization script designed to create a lower, upper, and permutation matrices when given an A matrix.**

#Specifics of Function:
*Inputs:*
- A = Coefficient matrix
*Outputs*
- L = Lower triangular matrix
- U = Upper triangular matrix
- P = Permutation matrix

#Example
Only a coefficient matrix needs to be passed where it will use gauss elimination to create the upper and lower matrices as well as keep track of permutations where '[A] [P] = [L] [U]'.
If the A matrix: |1|2|3|  
		 |4|5|6|				
		 |7|8|9|
were to be passed, it would return:
L = |1|2|3|
    |4|5|6| 
    |7|8|9|
U = |7|8    |9    |
    |0|0.857|1.714|
    |0|0    |0    |
P = |0|0|1|
    |1|0|0|
    |0|1|0|
