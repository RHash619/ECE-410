A = randn(400,400)
B = rand(400,400)
x = zeros(400,1)

prod = 0;
flop = 0;
for i=1:length(x)
    prod = prod + A(i)*(B(i)*x);
    flop = flop+2;
end

disp(flop);