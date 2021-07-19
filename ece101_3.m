[y,FS] = audioread('sharp.mp4');
po = audioplayer(y,FS);


[y,FS]=cheby1(8,10,0.6,stop);

freqz(y,FS);






