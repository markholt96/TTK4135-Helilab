close
clear
clc

data = load('heliSim.mat')
time = data.ans(1,:);
travel = data.ans(2,:);
travel_rate = data.ans(3,:);

plot(time, data.ans((2:4),:))
legend('Travel','Travel rate','Pitch','Pitch rate')
grid on
xlabel('Time')
ylabel('Angle')
title('Open loop Control')

