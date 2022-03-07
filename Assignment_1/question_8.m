% Aditya Badayalya, 510819056, Assignment 1
clc;clear;
r=1;
x0=0;
y0=0;
theta = linspace(0,2*pi,10000);
x = [-1.1:0.1:1.1]
y = x*0
hold on
plot(x0 + r*cos(theta),y0 + r*sin(theta),'-')
plot(x,y)
plot(y,x)
hold off
axis equal