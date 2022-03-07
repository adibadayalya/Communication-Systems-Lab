%510819056, Aditya Badayalya, Assignment 1
clc;clear;
N=1024; 
f1=1; 
FS=200;  
n=0:N-1; 
x=sin(2*pi*f1*n/FS);
t=[1:N]*(1/FS); 
subplot(2,1,1);
plot(t,x); 
title('Sinwave');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;
Rxx=xcorr(x); 
subplot(2,1,2); 
plot(Rxx); 
grid;