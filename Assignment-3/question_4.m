clc;clear;
Ac = input('Enter Carrier Signal Amplitude: ');
Am = input('Enter Message Signal Amplitude: ');
fc = input('Enter Carrier Frequency: ');
fm = input('Enter Message Frequency: ');
m = input('Enter Modulation Frequency: ');
t = input('Enter Time Period: ');

t1 = linspace(0,t,1000);

y1 = sin(2*pi*fm*t1);%message signal
y2 = cos(2*pi*fc*t1);%carrier signal

eq = (1+m.*y1).*(Ac.*y2);

figure('name','Question 4','numbertitle','off');

subplot(3,1,1)
plot(t1,y1);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
subplot(3,1,2)
plot(t1,y2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
subplot(3,1,3)
plot(t1,eq);
xlabel('Time');
ylabel('Amplitude');
title('Modulated Signal');
