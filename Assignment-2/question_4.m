%Aditya Badayalya, 510819056, Assignment 2
clc;clear;
t = 0:0.0001:40;
w = 0.2*t*pi; %since frequency is 0.1
p1=input("Enter phase difference for first sample in terms of 'n*pi', enter n: ");
p2=input("Enter phase difference for second sample in terms of 'n*pi', enter n: ");
p3=input("Enter phase difference for third sample in terms of 'n*pi', enter n: ");
y = 1.5*sin(w+p1);
y1 = 1.5*sin(w+p2);
y2 = 1.5*sin(w+p3);
yax = w*0;
figure('name',"Question 4",'numbertitle', 'off');
subplot(3,1,1)
plot(w,y);
xlim([0 25]);
xlabel("Time");
ylabel("Amplitude");
title("phase difference = "+p1+"pi");
subplot(3,1,2)
plot(w,y1);
xlim([0 25]);
xlabel("Time");
ylabel("Amplitude");
title("phase difference = "+p2+"pi");
subplot(3,1,3)
plot(w,y2);
xlim([0 25]);
xlabel("Time");
ylabel("Amplitude");
title("phase difference = "+p3+"pi");