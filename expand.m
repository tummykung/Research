
function [A, coeff] = expand(v, basis)

v0  = basis(:, 1);
v1  = basis(:, 2);
v2  = basis(:, 3);
v3  = basis(:, 4);
v4  = basis(:, 5);
v5  = basis(:, 6);

A = [(v'*v0)*v0, (v'*v1)*v1, (v'*v2)*v2, (v'*v3)*v3, (v'*v4)*v4, (v'*v5)*v5];
coeff = v' * basis;

end