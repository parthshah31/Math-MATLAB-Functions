function [DotAvg] = averagedot(d, n)
%   AverageDot is a solution to 1.2 #32 Challenge Problem in "Linear Algebra and its Applications" by Gilbert Strang
%   Create random d dimensional vector and then n d dimensional vectors.
%   Then find the average value of the initial vector's dot product with the n vectors.

v = randn(d,1);
u = v/norm(v);  %norm turns v into unit vector u
V = randn(d,n);
U = zeros(d,n);
DotSum = 0;
for x = 1:n
    U(:,x) = V(:,x)/norm(V(:,x));   %creates unit vector columns
    DotSum = DotSum + abs(dot(u,U(:,x)));   %calculates total dot sum of u with each columns of U
end
DotAvg = DotSum/n;  %divides by total number of dot product computations to get final answer

end
