fs=length(out.X.data);
 f = fs/2*linspace(-1,1,fs);
 fftsignal=((fft(out.X.data)))
fftSignal = fftshift(fftsignal);
plot(f, abs(fftSignal));

% fftNoise = fft(out.noise);
% fftNoise = fftshift(fftNoise);
% figure, plot(f,abs(fftNoise))