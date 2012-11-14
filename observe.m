function A = observe(n, k, notSet)
%returns matrix that corresponds to observing that
%sets containing notSet have probability 0

list = nchoosek(1:n, k);
nck = length(list);

A = zeros(nck);

for i = 1:nck;
    A(i,i) = 1 - all(ismember(notSet, list(i, :)));
end


end