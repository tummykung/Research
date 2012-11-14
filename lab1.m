function [s, t] = lab1(n, k, r)

%n = 10;
%k = 5;
%r = 3;  % the r-th order effect
nck = nchoosek(n, k);
v = rand(nck, 1);

[B, V] = eig(adjacency_matrix(n, k));

list_nr = nchoosek(1:n, r);
rand_notSet_index = randi(length(list_nr));
notSet = list_nr(rand_notSet_index, :);
A = observe(n, k, notSet);

decomposedV = decompose(v, B);

v = restrictOrder(v, B, r, diag(V));
%v = sum(decomposedV(:, OI(2):end), 2);

zeroThresh = 1e-5;

s = highestOrder(v, B, zeroThresh, diag(V));
t = highestOrder(A * v, B, zeroThresh, diag(V));

end