[m,n] = size(A);
[Q,R,P] = qr(A);
c = Q'* b;
% The diagonal entries of R
%|R(1,1)| >= |R(2,2)| >= |R(3,3)| >= ..
% Find the smallest integer r
%|R(r+1,r+1)| < max(size(A))*eps*|R(1,1)|
tol = max(size(A))*eps*abs(R(1,1));
r = 1;
while ( abs(R(r+1,r+1)) >= tol & r < n ); r = r+1; end
y1 = R(1:r,1:r) \ c(1:r);
y2 = zeros(n-r,1);
x = P*[y1;y2];