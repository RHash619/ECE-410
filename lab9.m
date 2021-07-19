t=0:2*(10^(-4)):0.05;
x=(cos(2*pi*100*t))+(cos(2*pi*500*t));
[b,a]=butter(20,2*pi*300,'s');
z1=tf(b,a);
w=2*pi.*(0:800);
H=freqs(b,a,w);
y=lsim(z1,x,t);
plot(t,y);
grid;
xlabel('t');
ylabel('y(t)');
title('Output y(t) after filtering')

