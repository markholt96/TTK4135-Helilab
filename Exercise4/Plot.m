close all
clear
clc

%Lab2
data1 = load('heliSimLab2.mat')
travel1 = data1.ans(2,:);
pitch1 = data1.ans(4,:);

%Lab3
data2 = load('heliSimLab3_2.mat')
time = data2.ans(1,:);
travel2 = data2.ans(2,:);
pitch2 = data2.ans(4,:);

%Ref
data3 = load('x_ref.mat')
data3.x_ref = data3.x_ref';
time3 = data3.x_ref(1,:)
travel_ref = data3.x_ref(2,:)
travel_ref = rad2deg(travel_ref);
pitch_ref = data3.x_ref(4,:)
pitch_ref = rad2deg(pitch_ref);

%% Comparison between lab 2 and 3
figure()
plot(time, data2.ans(2:4,:))
title('Feedback control lab 3')
legend('Travel','Travel rate','Pitch')
grid on
xlabel('Time')
ylabel('Angle')



%% Comparison between reference and measured travel and pitch
figure()
subplot(2,1,1)
plot(time3, travel_ref, 'm', time3, travel_ref, 'mo')
hold on
plot(time, travel2)
title('Measured vs Reference travel')
legend('Travel ref','' ,'Travel')
grid on
xlabel('Time')
ylabel('Angle')

subplot(2,1,2)
plot(time3, pitch_ref, 'm', time3, pitch_ref, 'mo')
hold on
plot(time, pitch2)
title('Measured vs Reference pitch')
legend('Pitch ref','','Pitch')
grid on
xlabel('Time')
ylabel('Angle')
