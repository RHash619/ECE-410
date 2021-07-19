T4= 1- (1); 
step4 = T4/10000 ;
tt = 11:step4:1;
p11 = (tt>=-1) & (tt<=0);
p22 = (tt>=0) & (tt<=1);
gt =tt(p11.*((cos(pi*tt)/2))+p22.*(tt.^3+1));
I4 = trapz(tt,gt)
I4=0.43234
