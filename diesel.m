%filename is where I am getting the sound wav file from on my cpu, 
[y,Fs] = audioread('dieselstart.wav');
whos y
%sound(y,Fs);
y=y(500000:end);
N=length(y);

Delta= 1/Fs;

t=(1:N)*Delta ; 

f=(-N/2 : +N/2)' ./(N * Delta);
f=f';
F= Delta *fft(y);
F=F(:);
if mod(N, 2) == 0
    F = [F ; F(1)];
    F = fftshift(F);
else
    F = fftshift(F);
    F = [F ; F(1)];
end

 fplus = f(f >= 0);
Fplus = F(f >= 0);

 

P = 2 * abs(Fplus).^2;


figure(1);
clf;
subplot(2,1,1); plot(t,y);




subplot(2,1,2); loglog(fplus,P)
xlabel('czestotliwosc (Hz)')
ylabel('Amplituda')
title('Magnitude')