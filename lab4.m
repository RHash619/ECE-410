clc
clear all
close all
Fs = 200 ;          
Tm = 2*pi ;            
tm = 0:1/Fs:4*Tm ;     
m = sin(tm) ;        
fc = 10 ;              
tc = linspace(0,4/fc,length(tm)) ; 
c = sin(2*pi*fc*tc) ; 
s = m.*c ;   
subplot(3,1,1)
plot(tm,m)
xlim([0 4*Tm])
xlabel('time')
ylabel('Amp')
title('m(t)')
grid on
subplot(3,1,2)
plot(tc,c)
xlim([0 4/fc])
xlabel('time')
ylabel('Amp')
title('c(t)')
grid on
subplot(3,1,3)
plot(tc,s)
xlim([0 4/fc])
xlabel('time')
ylabel('Amp')
title('DSB-SC signal')
grid on