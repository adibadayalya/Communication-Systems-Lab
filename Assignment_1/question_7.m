% Aditya Badayalya, 510819056, Assignment 1
clc;clear;
x = (0:0.1:2*pi); %start time: 1/frequency: stop
y = cos(x);
hold on
plot(x,y);
stem(x,y);
hold off