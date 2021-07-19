T2 = 2 - (2); 
step2 = T2/10000 ;
tt = 2:step2:2;
p11 = (tt>=-2) & (tt<=-1);
p22 = (tt>=-1) & (tt<=0);
p33= (tt>=0) & (tt<=1);
p44 = (tt>=1) & (tt<=2);
gt = p11.*((cos(pi*tt)/2))+p22.*(tt.^3+1) +p33.*(1)+ p44.*(sin(2*pi*tt)+1);
I2 = trapz(tt,gt)