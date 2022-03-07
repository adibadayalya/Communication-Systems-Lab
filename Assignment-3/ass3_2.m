clear;
clc;
[y, fs] = audioread('Sample.wav');
N = length(y); 
t = linspace(0,N/fs,N);
F = 10000;
subplot(4,1,1);
plot(t,y)
title('time domain sound wave plot');

%f = (0:N-1)/N; % normalised frequency, but can be modified to plot the true frequency
%f = (0:N-1)*(fs/N); % true frequency, fs is the sampling frequnecy

f = -fs/2:(fs/N):(fs/2 - fs/N);
y1 = abs(fft(y));
subplot(4,1,2);
plot(f, y1);
title('frequency domain sound plot');

%Design the FIR LPF
f_cutoff = 50; % cutoff frequency in Hz
order = 50;
h = fir1(order,f_cutoff/F);
%freqz(h,1,1e5,F);


y2 = filter(h,1,y);
subplot(4,1,3);
plot(t, y2)
title('time domain filtered sound plot');

NN = length(y2); 
%f = (0:NN-1)/NN; % normalised frequency, but can be modified to plot the true frequency
%f = (0:NN-1)*(fs/NN); % true frequency, fs is the sampling frequnecy
f = -fs/2:(fs/NN):(fs/2 - fs/NN);
y3 = abs(fft(y2));
subplot(4,1,4);
plot(f, y3);
title('frequency domain filtered sound plot');