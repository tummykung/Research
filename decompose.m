function [decomp, coeff] = decompose(v, basis)

%note that basis should be orthonormal

coeff = v' * basis;
decomp = repmat(coeff, length(basis), 1)  .* basis;

end