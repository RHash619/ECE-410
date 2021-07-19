A = randn(200,200)
B = rand(200,200)
x = zeros(200,1)

prod = 0;
flop = 0;
for i=1:length(x)
    prod = prod + A(i)*(B(i)*x);
    flop = flop+2;
end

disp(flop);