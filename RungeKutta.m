function [X,Y] = RungeKutta(x,y,x1,n)
% RungeKutta method
% relies on four values of k as opposed to the standard 1 or 2
X = x;
Y = y;
h = (x1 - x)/n; %step size

for i = 1:n
    k1 = f(x,y);
    k2 = f((x + h/2),(y + (h*k1/2)));
    k3 = f((x + h/2),(y + (h*k2/2)));
    k4 = f(x1,(y + h*k3));
    y = y + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
    x = x + h;
    X = [X;x];
    Y = [Y;y];
end

function yprime = f(x,y)
yprime = x - y; % I used y' = x - y but you can replace with any equation of the form y' = f(x,y)
