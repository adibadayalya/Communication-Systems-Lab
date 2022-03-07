
clc;clear;
[y,Fs] = audioread('clip.wav');

sigLength = length(y); %length

t=(0:sigLength-1)/Fs;   

N = input("Enter the value of N = ");
L = 2^N;

[quant,quantnoise]=quantize(t(1:500),y(1:500),L);

sound(y,Fs);

function [quant,quantnoise]=quantize(t,y,L)
% where y is the signal:t is sampling duration:L is number of
% quantization Level:quant is quantized signal:quantnoise is quantisation noise 
xmax=max(y);xmin=min(y);  
q=(xmax-xmin)/(2^L);
for i =1: length(y)
  quant(i)= round(y(i)*2^(L-1))/(2^(L-1))-sign(y(i))*q/2;
end
quantnoise=mean((y-quant).^2);

grid;plot(t,y,'r--',t,quant,'b-');
axis tight; grid on;legend('original','quantized');
fprintf('\n Mean Squared Error between original and quantized = %g\n\n',quantnoise)
end