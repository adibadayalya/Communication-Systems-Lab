%Aditya Badayalya, 510819056, Assignment 2
clc;clear;
figure('name',"Question 6",'numbertitle', 'off');
m = 0:50;
y = 2.*m.*(0.9.^m);
subplot(2,2,1);
stem(m,y);
title("Original Signal");
xlabel("Time");
grid on;
subplot(2,2,2)
n = 2*rand(1,51);
x = y + n;
stem(m,n,'g');
title("Noise");
xlabel("Time");
grid on;
subplot(2,2,3)
stem(m,x,'c');
title("Noisy Signal");
xlabel("Time");
grid on;
p = [0:50];
for i=1:51
    c=0;
    s=0;
    if i < 6
        for j = i:1:-1
            c = c+1;
            s = s+x(j);
        end
        for j = i+1:1:i+5
            c = c+1;
            s = s + x(j);
        end
        p(i)=s/c;
    elseif i<46
        for j=i-5:i+5
            s = s + x(j); 
        end
        p(i)=s/11;
    else
        for j = i-5:50
            s = s+x(j);
            c=c+1;
        end
        p(i)=s/c;
    end
end
subplot(2,2,4);
stem(m,p,'r');
title('Smoothed by average');
xlabel('Time');
grid on;       