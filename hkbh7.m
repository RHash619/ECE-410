
%% part (a)
Ga1 = tf([1 2],[1 5]);

Ga2 = tf([1 0 4],[1 -3]);

Ga = Ga1*Ga2; 

figure

rlocus(Ga)
%% part (b)
Gb1 = tf([1 5],[1 0 1]);

Gb2 = tf([1],[1 -1]);

Gb3 = tf([1],[1 3]);

Gb = Gb1*Gb2*Gb3; 
figure

rlocus(Gb)

num = [1 -2 7];

den = poly([-3 -5]);

GH = tf(num,den);

K = [0:0.0001:30, Inf]; rlocus(GH,K);
z=0.2:0.1:0.9;

