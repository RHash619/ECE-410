
function r = multi(A,B,n)
r = zeros(n,1);
for i = 1:n
    a = 0;
    for j = 1:n
        a = A(i,j) * B(i,j);
    end
    r(i) = a;
end 
