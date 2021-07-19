Num=1200; 
Fsample=20e3;
Tsample=1/Fsample; 
t=0:Tsample:Tsample*(Num-1); 
message=sin(100*pi*t); 
fcarrier=1000; 

x1=message.*cos(2*pi*fcarrier*t); 
figure(1)
plot(t,x1);
title(' DSB-SC plot');
xlabel('t');
ylabel('x_1(t)');



h=1./(pi*t(2:51)); 
mh=conv(h,message);
mh=Tsample*mh(1:Num);


x2=mh.*sin(2*pi*fcarrier*t);
figure(2)
plot(t,x2);
title(' DSB-SC signal plot 2 ');
xlabel('t');
ylabel('x_2(t)');


x=x1+x2;
figure(3)
plot(t,x);
title('SSB signal plot');
xlabel('t');
ylabel('x(t)');
