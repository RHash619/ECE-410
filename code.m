close all; clear all; clc;
fs = 20000; % sampling frequency 20 kHz
fc = 1000; % sine wave frequency 1000 Hz
T = 0:1/fs:6/fc - 1/fs; % duration of sine waves containing 6 cycles
x = sin(2*pi*fc*T); %  sine wave 
h = exp(-1000*T); %  h(t) 
h = h(1:10); %  to first 10 samples
y=conv(x,h); 
t=0:1/fs:(length(y)-1)/fs; % define time scale in s for the length of convolution
figure(3);
plot(t,y);
xlim([-0.0005 0.007]);
xlabel('t in seconds');
ylabel('y(t) = x(t)*h(t) ----> ');
title('Convolution of x(t) and h(t)');