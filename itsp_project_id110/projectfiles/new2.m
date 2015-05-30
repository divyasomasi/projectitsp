function w = new2(x)
 % w = mc(x) is used to estimate frequency
 % the MC method from the vector x
 % x is supposed to be a noisy single-tone sequence
 % w is the estimated frequency in radian
 N=max(size(x));
 t1=0;
 t2=0;
 for n=3:N
 t1=t1+x(n-1)*(x(n)+x(n-2));
 t2=t2+2*(x(n-1))^2;
 end
 r = t1/t2;
 if (r>1)
 r=1;
 end
 if (r<-1)
 r=-1;
 end
 w=acos(r);