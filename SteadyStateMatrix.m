function [] = SteadStateMatrix()
%SteadyStateMatrices codes given by 2.1 problem 30
%   Just copy and paste the code into the command window

%code 1
n = 7; %can change to however many iterations you want
A = [.8, .3; .2, .7]; %editable. this matrix was inspired from a challenge problem in "Linear Algebra and its Applications" by Gilbert Strang
k = [0:n];
u = [1;0];
x = u;
while size (x,2) <= n
    u = A*u;
    x = [x u];
end
plot(k,x);

%code 2
n = 7;
A = [.8, .3; .2, .7];
k = [0:n];
v = [0;1];
y = v;
for j = 1:7
    v = A*v;
    y = [y v];
end
plot(k,y);
