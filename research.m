

v0 = [1, 1, 1, 1, 1, 1]';
v1 = [-1, 0, 0, 0, 0, 1]';
v2 = [0, -1, 0, 0, 1, 0]';
v3 = [0, 0, -1, 1, 0, 0]';
v4 = [1, 0, -1, -1, 0, 1]';
v5 = [0, 1, -1, -1, 1, 0]';
v4 = v4 - 0.5*v5;

v0 = v0/norm(v0);
v1 = v1/norm(v1);
v2 = v2/norm(v2);
v3 = v3/norm(v3);
v4 = v4/norm(v4);
v5 = v5/norm(v5);

basis = [v0,v1,v2,v3,v4,v5];

v = [.5,0,.2,.1,.2,0]';
[vHat, coeff] = expand(v, basis)

A = eye(6);
A(1, 1) = 0;

disp('full sum');
sum(vHat,2)
renormalize(expand(A*sum(vHat(:, 1:6), 2), basis))

disp('partial sum');
renormalize(expand(A*sum(vHat(:, 1:4), 2), basis))

disp('check');
vCheck = [0,0,.4,.2,.4, 0]';
renormalize(expand(A*vCheck, basis))