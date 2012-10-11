function B = renormalize(A)

n = length(A);
scale = 1/(n * A(1,1));

B = scale * A;

end