fs = 15000;
h2 = firpm(127,[0 2000/fs/2 2200/fs/2 1],[1 1 0 0]);
n = 0:299;
x = sin(2*pi*1000*n/fs) + sin(2*pi*3000*n/fs);
y = conv(x,h2);
Y = fft(y);
ww = -pi:2*pi/length(Y):pi-1/length(Y);
plot(ww*fs/2/pi,abs(fftshift(Y)));
title("Magnitude  y(n)");
xlabel("f(Hz)");



