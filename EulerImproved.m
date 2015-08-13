function [X,Y] = EulerImproved(x,y,x1,n)
%Euler's improved linear approximation method
%   x1 is the final x value. You cna change the derivative in the yprime
%   function. n is the number of steps. the larger n is the more accurate
%   it will be. anyways enjoy!

h = (x1-x)/n; % h is step size
X = x;
Y = y;

for i= 1:n
    u = y + h*f(x,y);
    y = y + (h/2)*(f(x,y)+f(x+h,u));
    x = x + h;
    X = [X;x];
    Y = [Y;y];
end

function yprime = f(x,y) %declare function y' here
yprime = x - y; % I used y' = x - y but you can use any function of the form y' = f(x,y)
