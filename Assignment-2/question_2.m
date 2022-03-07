%Aditya Badayalya, 510819056, Assignment 2
clc;clear;
n = 1:1:21;
delay = input("Enter the delay in range of 1-20: ");
while delay<1 || delay > 20
    delay = input("Input out of range! Please enter input again: ");
end
dellay = input("Enter the delay in range of 1-20 (for amplitude 2): ");
while dellay<1 || dellay > 20
    dellay = input("Input out of range! Please enter input again: ");
end
u_1 = [ones(1,21)];
u_2 = [zeros(1,delay) ones(1,21-delay)];
u_3 = [zeros(1,dellay) ones(1,21-dellay)+1];
figure('name',"Question 2",'numbertitle', 'off');
subplot(3,1,1)
stem(n-1,u_1);
axis([-1 21 -2 1.5]);
xlabel("time");
ylabel("Unit step");
title("Original");
ylim([0 1.5]);
subplot(3,1,2)
stem(n-1,u_2);
axis([-1 21 -2 1.5]);
xlabel("time");
ylabel("Unit(n-d)");
title("Delayed");
ylim([0 1.5]);
subplot(3,1,3)
stem(n-1,u_3);
axis([-1 21 -2 1.5]);
xlabel("time");
ylabel("2*Unit(n-d)");
title("Delayed (amplitude = 2)");
ylim([0 2.5]);