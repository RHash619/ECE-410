A = randn(100,100)
B = rand(100,100)
x = zeros(100,1)

prod = 0;
flop = 0;
for i=1:length(x)
    prod = prod + A(i)*(B(i)*x);
    flop = flop+2;
end

disp(flop);