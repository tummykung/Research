function A = adjacency_matrix(n, k)

list = nchoosek(1:n, k);
nck = length(list);
A = zeros(nck);

for i = 1:nck
    for j = 1:nck
         A(i,j) = (sum(ismember(list(i, :), list(j, :))) == k-1);
    end
end

end