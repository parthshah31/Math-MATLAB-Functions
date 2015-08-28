function [U] = ConvectionDiffusionEquation(u0,x0,u1,x1,dx)
%Convection Diffusion Equation
%{   
   Famous convection diffusion equation given u(x0) = u0 and u(x1) = u1.
   dx must divide into x1-x0. dx is the step size. This is a linear
   approximation to a differential equation of the form Ax'' + Bx' = 1
   In this case A = -1, and B = 10
%}

%steps
n = ((x1-x0)/dx);

%unique to the equation
a = ((-10/dx)-(1/(dx)^2));
b = ((10/dx)+(2/(dx)^2));
c = (-1/(dx)^2);
U = zeros(n,1);
X = zeros(n,1);
X(1) = x0;
for i = 2:n
    X(i) = X(i-1)+dx;
end
syms u;
U(1) = u0;
val1 = u0;
val2 = u;
i = 1;

while(i<n)
    val3 = (1 - b*val2 - a*val1)/c;
    val1 = val2;
    val2 = val3;
    i = i+1;
end

%solve for u
U(2) = solve(val2==u1,u);

%update array U
for i = 3:n+1
    U(i) = (1 - b*U(i-1) - a*U(i-2))/c;
end
end
