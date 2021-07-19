function result = dotproduct(v,w,n)
a=0;
for i = 1:n
   a = a + v(i)*w(i);
end 
result = a;
