clc;clear;
[y , fs] = audioread('Sample.wav');
N = length(y);
t = linspace(0,N/fs,N);
F=10000;
figure('name','Question 2','numbertitle','off');
subplot(2,2,1)
plot(t,y);
title('Time Domain');
xlabel('Time')
ylabel('Amplitude');
ylim('auto');

f = -fs/2:(fs/N):(fs/2-fs/N);
y1 = abs(fft(y));
subplot(2,2,2)
plot(t,y1);
title('Frequency Domain');
xlabel('Frequency')
ylabel('Amplitude');
ylim('auto');

cutoff_freq = 50;
order = 5;
h = fir1(order,cutoff_freq/F);
y2 = filter(h,1,y);
subplot(2,2,3)
plot(t,y2,'r')
title('Time Domain Filtered');
xlabel('Time')
ylabel('Amplitude');
ylim('auto');

NN = length(y2);
f = -fs/2:(fs/NN):(fs/2-fs/N);
y3 = abs(fft(f));
subplot(2,2,4);
plot(t,y3,'r');
title('Frequency Domain Filtered');
xlabel('Frequency')
ylabel('Amplitude');
ylim('auto');





