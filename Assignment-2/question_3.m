%Aditya Badayalya, 510819056, Assignment 2
clc;clear;
x = 0:0.0001:35;
y = exp(x);
figure('name',"Question 3",'numbertitle', 'off');
subplot(2,1,1)
plot(x,y);
title("First");
xlabel("time(t)");
ylabel("exp(t)");
subplot(2,1,2)
y = exp(-x);
plot(x,y);
title("Second");
xlabel("time(t)");
ylabel("exp(-t)");