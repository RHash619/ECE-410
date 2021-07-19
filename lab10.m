clc, clear all 

audio = load('Star_Wars.m4a');
x = audio.y; 
Fs = audio.Fs; 
[x, Fs] = audioread('Star_Wars.m4a');
N = length(x); 
N = ceil(N/4)*4;


X = fftshift(fft(x, N)); 
f = -Fs/2:Fs/N:Fs/2-Fs/N; 
plot(f, abs(X)/N);
xlabel('Frequency (in Hertz)');
title('FFT Magnitude Response of original signal');


compression = 50; 
n = floor(N * compression/100 * 1/2);
Y = X;
Y(1:n) = 0;
Y(end-n+1:end) = 0;
figure;
plot(f, abs(Y)/N);
xlabel('Frequency (in hertz)');
title('FFT Magnitude Response of compressed signal');

y = ifft(fftshift(Y));   

y = real(y);
% Play the compressed signal
soundsc(y,Fs);