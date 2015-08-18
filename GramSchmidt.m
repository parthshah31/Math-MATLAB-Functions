function [Q,R,x] = GramSchmidt(M,b)
%Implementation of Gram Schmidt process; in MATLAB the function is [Q,R] = qr(A)
[m,n] = size(M);
K = zeros(m,n);
Q = zeros(m,n);
K(1,:) = M(1,:);
for i=2:n
    K(i,:) = M(i,:);
    j = i-1;
    while j>0
        K(i,:) = K(i,:) - ((transpose(K(j,:))*M(i,:))/(transpose(K(j,:))*M(j,:)))*K(j,:);
        j = j-1;
    end
end

for i=1:n
    Q(i,:) = K(i,:)/norm(K(i,:));
end
R = transpose(Q)*M;
y = A\transpose(Q);
x = y*b;
end
