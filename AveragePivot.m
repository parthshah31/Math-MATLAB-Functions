function [Avg] = AveragePivot(n)
%Average Pivot calculates the average pivot values of n matrices
%   check the README for a more detailed explanation
d = 3; %dimension
Total = zeros(1,d); %initializes Total
for x = 1:n
    [L,U] = lu(rand(d)); %we will only use the upper triangular matrix
    for j = 1:d 
        Total(j) = Total(j) + abs(U(j,j)); %pivots are always on the diagonal
    end
end
Avg = Total/n; %obtain final answer
