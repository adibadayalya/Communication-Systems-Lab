dt = 0.01;
t = 0 :dt:5;
fm = 1;             % messege frequency
fc = 10;            % carrier frequency
Am = 5;
Ac = 2;
fs = 100 * fc;      % sampling frequency
f = linspace(-fs/2,fs/2,length(t));

% Baseband and carrier signal
mt = Am*sin(2*pi*fm*t);
ct = Ac*sin(2*pi*fc*t);

% Modulation

yt = mt .* ct; %time domain
yf = fftshift(fft(yt));  %frequency domain

% Demodulation(using Synchronous Detection)
 
% Time domain

dmt = 2*(yt .* ct) ./ (Ac*Ac); % product modulator

h = fir1(40,(dt * fc));
m = filter(h,1,dmt); % low pass filter


% Frequency domain

 mf = fftshift(fft(m));


% plotting the baseband and carrier signal

figure('Name' , 'Baseband and Carrier Wave');
subplot(2,1,1);
plot(t,mt,'r');
title('Baseband Signal');
xlabel('Time-->');
ylabel('Amplitude--->');
subplot(2,1,2);
plot(t,ct,'b');
title('Carrier Signal');
xlabel('Time-->');
ylabel('Amplitude--->');


% modulation

figure('Name','Modulation');
subplot(2,1,1);
plot(t,yt,'m');
title('Time Domain plot(Modulated) ');
xlabel('Time-->');
ylabel('Amplitude--->');

subplot(2,1,2);
plot(f,abs(yf),'k');
title('Frequency Domain plot(Modulated)');
xlabel('Frequency-->');
ylabel('Amplitude--->');

% demodulation 

figure('Name','Demodulation');
subplot(2,1,1);

plot(t,m,'r');
title('Time Domain plot(Demodulated)');
xlabel('Time-->');
ylabel('Amplitude--->');

subplot(2,1,2);
plot(f,abs(mf),'k');
title('Frequency Domain plot(Demodulated)');
xlabel('Frequency-->');
ylabel('Amplitude--->');