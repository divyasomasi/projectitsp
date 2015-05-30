amp=3 ;
fs=44100  ;% sampling frequency
duration=2;
freq=112;
values=0:1/fs:duration;
a=amp*sin(2*pi* freq*values);
sound(a,44100);