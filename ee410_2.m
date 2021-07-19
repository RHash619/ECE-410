T1 = 1-(2); 
step1 = T1/40000 ;
tt = 2:step1:1;
p11 = (tt>=-2) & (tt<=-1);
p22 = (tt>=-1) & (tt<=0);
p33= (tt>=0) & (tt<=1);
gt = p11.*((cos(pi*tt)/2))+p22.*(tt.^3+1) +p33.*(1);
I1 = trapz(tt,gt)

