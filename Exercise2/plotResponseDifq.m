close
clear
clc

data = load('u0.1.mat')
time = data.t(:);
u0_1 = data.u(:);

data2 = load('u1.mat')
u1 = data2.u;

data3 = load('u10.mat')
u10 = data3.u;

subplot(3,1,1)
plot(time, u0_1)
title('q = 0.1')
xlabel('Time')
ylabel('Rad')
subplot(3,1,2)
plot(time, u1)
title('q = 1')
xlabel('Time')
ylabel('Rad')
subplot(3,1,3)
plot(time, u10)
title('q = 10')
xlabel('Time')
ylabel('Rad')
