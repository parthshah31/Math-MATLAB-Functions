function [X,Y] = Euler(x,y,x1,n)
%euler's linear approximation method
% x1 is final value.
% use command [X,Y] = Euler() to generate X and Y columns
h = (x1-x)/n; %step size
X = x;
Y = y;
for i = 1:n
    y = y+h*f(x,y);
    x = x + h;
    X = [X;x];
    Y = [Y;y];
end

function yp = f(x,y) %declare function y' = f(x,y).
yp = x + y; %I used x + y but you can replace it with any function of the form y' = f(x,y)
