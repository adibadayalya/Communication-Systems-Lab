clc;clear;
t = 0:10:100;
c =-(1/15)+(pi/6)*i;
comp_sig=7*exp(-c*t);
figure('name','Question 1','numbertitle','off');
subplot(2,1,1)
[yupper, ylower] = envelope(real(comp_sig));
hold on 
plot(t,real(comp_sig));
plot(t, yupper,'-',t,ylower,'--');
hold off;
title('Envolope Signal');
xlabel('Time');
ylabel('Amplitude');
ylim('auto');
subplot(2,1,2)
plot(t,angle(comp_sig));
title('Message Signal Phase Angle');
xlabel('Time');
ylabel('Amplitude');
ylim('auto');
