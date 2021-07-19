f = [0 0.27 0.3 1];
a = [1 1 0 0];
b = firpm(127,f,a);
[h1,w] = freqz(b,1,512);
figure(1)
plot(f,a,w/pi,abs(h1))
xlabel 'Radian Frequency', ylabel 'Magnitude'
impz(b,1) 
[h,t]=impz(b,1) 
y=fft(h);
z=(0:length(y)-1)*15000/length(y);
figure(2)
plot(z,abs(y));
xlabel 'Frequency (Hz)', ylabel 'Magnitude'

c=h([33:96])';
append=[zeros(1,32),c,zeros(1,32)];
y2=fft(append);
z2=(0:length(y2)-1)*15000/length(y2);
figure(3)
plot(z2,abs(y2));
xlabel 'Frequency (Hz)'
ylabel 'Magnitude'

ham=h.*hamming(length(h));
y3=fft(ham);
z3=(0:length(y3)-1)*15000/length(y3);
figure(4)
plot(z3,abs(y3));
xlabel 'Frequency (Hz)', 
ylabel 'Magnitude'

