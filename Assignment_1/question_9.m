% Aditya Badayalya, 510819056, Assignment 1
clc;clear;
t = [-pi:0.0001:pi]
a= sin(t);
b = cos(t)
x = [-4:0.1:4];
y = x*0;
x1 = [-1.1:0.1:1.1];
y1 = x1*0;
tiledlayout(2,1)
nexttile
hold on
plot(t,a)
plot(x,y)
plot(y1,x1)
xlabel('angle in radian')
ylabel('value')
hold off
nexttile
hold on
plot(t,b)
plot(x,y)
plot(y1,x1)
xlabel('angle in radian')
ylabel('value')
hold off