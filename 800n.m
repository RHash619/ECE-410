A = randn(800,800)
B = rand(800,800)
x = zeros(800,1)

prod = 0;
flop = 0;
for i=1:length(x)
    prod = prod + A(i)*(B(i)*x);
    flop = flop+2;
end

disp(flop);