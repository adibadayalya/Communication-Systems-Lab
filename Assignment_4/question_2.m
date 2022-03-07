% Aditya Badayalya, 510819056, Assignment - 4, Question 2 
clc;clear;
fm1 = input('Enter the frequency value for Message Signal 1: ');
fm2 = input('Enter the frequency value for Message Signal 2: ');
fc = input('Enter the frequency value for Carrier Signal: ');
A1 = input('Enter the Amplitude value for Message Signal 1: ');
A2 = input('Enter the Amplitude value for Message Signal 2: ');

fs = 4*fc;
t = 0:1/fs:0.2;

m = A1*cos(2*pi*fm1*t) + A2*cos(2*pi*fm2*t);
c = cos(2*pi*fc*t);
y= fmmod(m,fc,fs,50);

figure('name','Question 2','numbertitle','off');

subplot(2,2,1);
plot(t,m);
xlabel('Time(s)');
ylabel('Amplitude');
title('Baseband Signal');

subplot(2,2,2);
plot(t,c,'r');
xlabel('Time(s)');
ylabel('Amplitude');
title('Carrier Signal');

subplot(2,2,3);
plot(t,y,'g');
xlabel('Time(s)');
ylabel('Amplitude');
title('Time Domain Modulated Signal');

f = fft(y);
fs = 50;
z = (0:length(f)-1)*fs/length(f);

subplot(2,2,4);
plot(z,f,'c');
xlabel('Frequency(Hz)');
ylabel('Amplitude');
title('Frequency Domain Modulated Signal');

