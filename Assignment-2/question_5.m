%Aditya Badayalya, 510819056, Assignment 2
clc;clear;
m = 0:50;
figure('name', 'Question 5', 'numbertitle','off')
subplot(3,1,1)
y = 2.*m.*(0.9.^m);
stem(m,y);
ylabel("S");
xlabel("Time");
title("Original Signal");
grid on;
subplot(3,1,2)
n = 2*rand(1,51);
x= y+n;
stem(m,n,'g');
ylabel("S");
xlabel("Time");
title("Noise");
grid on;
subplot(3,1,3)
stem(m,x);
ylabel("S");
xlabel("Time");
title("Noisy Sequence");
grid on;