Fs = 4410; % Sampling frequency
t = 0:1/Fs:1; % Time vector of 1 second 
f = 20; % Create a sine wave of f Hz.

x = sin(2*pi*t*f);
nfft = 1024; % Length of FFT
% Take fft, padding with zeros so that length(X)


X = fft(x,nfft);
% FFT is symmetric, throw away second half
% FFT is symmetric, throw away second half
X = X(1:nfft/2); 
% Take the magnitude of fft of x
mx = abs(X);
% Frequency vector
f = (0:nfft/2-1)*Fs/nfft; 
% Generate the plot, title and labels.
