%Aditya Badayalya, 510819056, Assignment 2
clc;clear;
n=1:1:21;
delay = input("Enter the delay in the range of 1-20 : ");
while delay<1 || delay>20
    delay= input("Invalid Input! Enter again " );
end
figure('name',"Question 1",'numbertitle', 'off');
del_1=[ones(1,1) zeros(1,20)];
del_1;
del_2=[zeros(1,delay) ones(1,1) zeros(1,20-delay)];
subplot(2,1,1);
stem(n-1, del_1);
axis([-1 21 -1 2]);
ylim([-0.5 1.5]);
xlabel("time");
ylabel("delta(n)");
title("Original");
subplot(2,1,2);
stem(n-1, del_2);
axis([-1 21 -1 2]);
ylim([-0.5 1.5]);
xlabel("time");
ylabel("delta(n)");
title("Delayed");
