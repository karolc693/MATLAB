%filename is where I am getting the sound wav file from on my cpu, 
[y,Fs] = audioread('dieselstart.wav');
whos y
sound(y,Fs);


figure(1);
clf;
subplot(2,1,1); plot(y);
Ts = 1/50;
t = 0:Ts:10-Ts;   
Y = fft(y);   
fs = 1/Ts;
f = (0:length(Y)-1)*fs/length(Y);

Y=fftshift(Y)
subplot(2,1,2); plot(f,abs(Y))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Magnitude')