function cc = calc(n, v, w)

A = zeros(v,w);

% c_factor = cholesky factor

c_factor =chol(A);

% flops = no of flops used.

flops = (power(n,3)/3);

end
