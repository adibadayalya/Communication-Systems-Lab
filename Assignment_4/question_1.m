% Aditya Badayalya, 510819056, Assignment - 4, Question 1 
clc;clear;
fm = input("Enter the frequency value of message signal: ");
fc = input("Enter the frequency value of carrier signal: ");
A = input("Enter the amplitude value of the message signal: ");

fs = 4*fc;
t = 0:1/fs:0.2;
m = A*cos(2*pi*fm*t);
c = cos(2*pi*fc*t);
y = fmmod(m,fc,fs,50);
figure('name', 'Question 1', 'numbertitle', 'off');

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