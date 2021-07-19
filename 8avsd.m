w_0 = 20;
c = 2;
fs = 100;
n = 200;
Vt1 = input('enter DC input: ');
[x,t] = vco(fs,w_0,c,n,Vt1);
plot ( t, x);
title ('VCO output');
xlabel 'Frequency', ylabel 'Magnitude';
 
 
function [x,t] = vco(fs,w_0,c,n,Vt1)
i = 1;
Ts = (1/fs);
x = zeros(1,n);
A = zeros(1,n);
B = zeros(1,n);
A(i) = Vt1;
for N = 1:1:n
    B(i) = Vt1;
    if (i > 1)
        A (i) = B(i) + A(i-1);
    end
 x(i) = cos( w_0 *N* Ts + c*Ts*(A(i)));
 t(i) = N;
 i = i + 1;
end
end

