
A = hilb(10);
fprintf('10x10 Hilbert matrix is \n')
disp(A)

b = ones(10,1);
fprintf('b vecto r is \n')
disp(b)

c=b(10,1)+10^-5;

x=A*b;
y=A*c;

fprintf('\t norm(x-y)=%f\n',norm(x-y,2))

fprintf('\t norm(x-y)/norm(x)=%f\n' ,norm(x-y,2)/norm(x,2))

fprintf('condition number of %f\n', cond(A))
