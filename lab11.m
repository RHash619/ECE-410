
fs = 1000;
t = 1/fs;
N = 128;

n= 0:N-1;
x = sin(2*pi*800*n*t);
X = fft(x,N);
y =abs(X);

Ts = (1/fs);
x = zeros(1,n);
A = zeros(1,n);
B = zeros(1,n);
A(i) = Vt1;
N = 1:1:n
B(i) = Vt1;
 if (i > 1)
     A (i) = B(i) + A(i-1);
  end
 x(i) = cos( w_0 *N* Ts + c*Ts*(A(i)));
 t(i) = N;
 i = i + 1;

f= n*(1/(N*t));
figure(1);
N= 16;
subplot(2,1,1).stem(f(1:N/2),y(1:N/2));
xlabel('frequecy ,in HZ');
ylabel('y[n]');
