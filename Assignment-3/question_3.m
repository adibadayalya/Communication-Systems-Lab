clc;clear;
dt = 0.01;
t = 0:dt:5;
fm = 1; %Message frequeny
fc = 10; %carrier frequency
Am=5;
Ac=2;
fs = 100*fc; %sampling frequency
f = linspace(-fs/2,fs/2,length(t));
%Baseband and carrier Signal
mt = Am*sin(2*pi*fm*t)
ct = Ac*sin(2*pi*fc*t);
%Modulation
yt = mt.*ct;%time domain
yf = fftshift(fft(yt));%frequency domain

%demodulating using synchromous detection

%Time Domain
dmt = 2*(yt.*ct)./(Ac*Ac);%product modulator
h = fir1(40,(dt*fc));
m = filter(h,1,dmt);%low pass filter

%frequency Domain
mf = fftshift(fft(m));
figure('name','Question 3','numbertitle','off');
subplot(3,2,1)
plot(t,mt,'r');
title('Baseband Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(3,2,2)
plot(t,mt,'r');
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
%modulation
subplot(3,2,3)
plot(t,yt,'c');
title('Time Domain Modulated');
xlabel('Time');
ylabel('Amplitude');
subplot(3,2,4)
plot(f,abs(yf),'c');
title('Frequency Domain Modulated');
xlabel('Frequency');
ylabel('Amplitude');
%demodulation
subplot(3,2,5)
plot(t,m);
title('Time Domain Demodulated');
xlabel('Time');
ylabel('Amplitude');
subplot(3,2,6)
plot(f,abs(mf));
title('Frequency Domain Demodulated');
xlabel('Frequency');
ylabel('Amplitude');


