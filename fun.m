function [observedV, observedVTrun, error] = fun(v, basis, A)


vHat = expand(v, basis);
observedV = renormalize(expand(A*sum(vHat, 2), basis));
[~, coeffV] = expand(sum(observedV, 2), basis);

observedVTrun = renormalize(expand(A*sum(vHat(:, 1:4), 2), basis));
[~, coeffVTrun] = expand(sum(observedVTrun, 2), basis);

diff = (coeffV - coeffVTrun)';
diff = diff(1:4);
error = sqrt(diff'*diff);
end