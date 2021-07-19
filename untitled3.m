freq = 1000; %  frequency of sine signal 1kHz
T1=1/fm; %signal period
fs = 10000; % signal frequency 
T2 = 1/fs; %sampling period
time=(0:T2:30*T1); % total time for 30 periods of signal
y= sin(2*pi*fm.*time); % sine signal equation
y=[];
for i=t
    y = [y rem(i,T)/T]; 
end
plot(t,y,'Linewidth',2)
xlabel('t');ylabel('y(t)'); 
Y=fft(y);
Y=fftshift(Y);
N=length(Y);
f=(-N/2:N/2-1)*fs/N;
figure;
plot(f,abs(Y),'Linewidth',2)