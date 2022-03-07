clc;clear;
t=0:0.1:100;
c=-(1/30)+(pi/6)*1i;
m_t=7*exp(-c*t);

subplot(211);
[yupper,ylower]=envelope(real(m_t));
hold on
plot(t,real(m_t));
plot(t,yupper,'-',t,ylower,'--');
hold off
xlabel('time-->');
title('envelop signal-->');
ylim('auto');

subplot(212);
plot(t,angle(m_t));
xlabel('time-->');
title('message signal phase angle-->');
ylim('auto');