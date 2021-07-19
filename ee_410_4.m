T3= 1.5- (0.5); 
step3 = T3/10000 ;
tt = 0.5:step3:1.5;
p11 = (tt>=0) & (tt<=0.5);
p22 = (tt>=0.5) & (tt<=1);
gt = p11.*((cos(pi*tt)/2))+p22.*(tt.^3+1);
I3 = trapz(tt,gt)
