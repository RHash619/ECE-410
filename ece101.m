FS = 44100;
dt = 1/FS;
t = 0:dt:10;
y = 0.05*cos(2*pi*400*t);

po = audioplayer(y,FS);
play(po);
















