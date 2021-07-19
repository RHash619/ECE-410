c= 4;
fs= 1000;
Ts = 1/fs;
fin = 1;
t = (0:Ts:3/fin);
w0 = 20;
vin = sin(2*pi*fin*t);
w = w0+c*vin;%% instant angular frequency
phase = cumsum(w)*Ts;
output = cos(phase);
plot(t,output);
ylim([-1.1 1.1]);
grid on;
xlabel('time(s)');
ylabel('FM signal')