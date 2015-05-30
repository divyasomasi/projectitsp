input='soundc.wav';
z=audioread(input);
%x=x(44100*5:44100*5+2500);
%z=(z(:,1)+z(:,2))/2;
[max_notes, min_notes]=tofindnoteduration(z);
note=1;
while(note<=length(max_notes))
    fprintf('note number %d \n',note);
x=z(max_notes(note):min_notes(note));
nfft = length(x); % Length of FFT
% Take fft, padding with zeros so that length(X)is equal to nfft
X = fft(x,nfft); 
% FFT is symmetric, throw away second half
lenth=round(nfft/2);
X = X(1:lenth);
% Take the magnitude of fft of x
mx = (abs(X))/lenth;
% Frequency vector
f = (0:lenth-1)*44100/nfft;
% Generate the plot, title and labels.
figure(20+note);
plot(x);
title('Sine Wave Signal');
xlabel('Time (s)'); 
ylabel('Amplitude');
figure(note);
plot(f,mx);
title('Power Spectrum of a Sine Wave');
xlabel('Frequency (Hz)'); 
ylabel('Power');

 i=1;
 j=1;
 max=0;
 while (i<length(f))
     if mx(i)>max
        
         
         j=i;
         max=mx(i);
     end
   
   
     i=i+1;
 end
 %[max,j]=min(-mx);
 
 
 funda=fund_freq(j,mx);
 funda2=diff_fund(j,mx);
 if(funda2==0)
     funda2=funda;
 end
 if(round(f(funda)/f(j))==1)
     funda=j;
 end
  fprintf('frequency is %d   amplitude is %d \n ',f(j),mx(j));
  fprintf('fundamental frequency is %d   amplitude is %d \n ',f(funda),mx(funda));
  fprintf('fundamental frequency 2 is %d   amplitude is %d \n ',f(funda2),mx(funda2));
  %fprintf('slow method frequency is %d \n ',frequency(x));
  factor=1;
  if(round(f(funda)/f(funda2))==1 )
     freq=f(funda);
     amp=1;
  else 
  freq=f(funda2);
  amp=1;
  
      
  end
  fprintf('final frequency is %d   amplitude is %d \n ',freq,amp);
  sin_note=artificial(length(x),freq,amp,factor);
  %others=get_others(j,mx);
  %max_dist=get_max_dist(others,mx);
  %[max,j]=min(-max_dist);
  %fprintf('frequency is %d   amplitude is %d \n ',f(others(j)),mx(others(j)));
  z(max_notes(note):min_notes(note))=sin_note;
  note=note+1;
end
sound(z,44100);
output=strcat('art_',input);
audiowrite(output,z,44100);