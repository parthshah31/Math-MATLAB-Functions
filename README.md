# Math-MATLAB-Functions
A collection of useful functions and methods implemented in MATLAB

The list at the moment is:

-) AverageDot.m

This function calculates the average dot product of unit vectors. It take a unit vector u of dimension d. It then generate n 		vectors of dimension d and creates a matrix U of dimension (n,d). The dot product of u with each column is calculated and then 	divided by the number of columns to get the average. For repeated trials the value should approach 2/pi as the value should 		reflect a computational version of the integral of cos(x).

-) AveragePivot.m

This function calculates the average pivot values of n random matrices. It uses the matlab function lu to get the upper triangular matrix.

-) ConvectionDiffusionEquation.m

Linear algebra approach to approximating a differential equation. Often used in pharmaceutical industry. You can adjust the function. Currently it is set at a value inspired by a problem in Gilbert Strang's Introduction to Linear Algebra.

-) Euler.m

This function uses the Euler approximation method to calculate a value y given the initial x and y coordinates (x,y), the final x coordinate (x1), and the number of steps (n). The larger n is, the more accurate the approximation is.

-) EulerImproved.m

This function uses the Improved Euler approximation method to calculate a value y given the initial x and y coordinates (x,y), the final x coordinate (x1), and the number of steps (n). The larger n is, the more accurate the approximation is.

-) Gram-Schmidt

This function uses the Gram Schmidt method to solve Ax = b and find solutions to the least squares question. The function may still need editing.

-) RungeKutta.m

This function uses the Runge-Kutta approximation method to calculate a value y given the initial x and y coordinates (x,y), the final x coordinate (x1), and the number of steps (n). The larger n is, the more accurate the approximation is.

-) SteadyStateMatrix.m

Calculates the steady state s given a matrix A. This means As = s. The matrix A and n can be varied. There are 2 codes provided but both accomplish the same task. It is easy to copy and paste the code and run it in the MATLAB command window.
  
