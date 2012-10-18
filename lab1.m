function lab1
n = 10;
k = 5;
r = 1;  % get rid of the first r highest frequency elements
nck = nchoosek(n, k);
list = nchoosek(1:n, k);
v = ones(nck, 1);

[B, V] = eig(adjacency_matrix(n, k));

B = fliplr(B);
V = fliplr(V);

O = orderIndex(diag(V));

notSet = list(5);
A = observe(n, k, notSet);

%decomposedV = decompose(v, B);
%decomposedV = sum(decomposedV(r + 1: end, :));
%highestFreqIndex(decomposedV, B, 1e-5)

end