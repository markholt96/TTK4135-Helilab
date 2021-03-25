close all
clear
clc

%Lab3
data2 = load('heliSimLab4Con.mat')
time = data2.ans(1,:);
travel = data2.ans(2,:);
travel_rate = data2.ans(3,:);
pitch = data2.ans(4,:);
elevation = data2.ans(5,:);

%Ref
data3 = load('x_ref.mat')
data3.x_ref = data3.x_ref';
time3 = data3.x_ref(1,:)

travel_ref = data3.x_ref(2,:)
travel_ref = rad2deg(travel_ref);

travel_rate_ref = data3.x_ref(3,:)
travel_rate_ref = rad2deg(travel_rate_ref);

pitch_ref = data3.x_ref(4,:);
pitch_ref = rad2deg(pitch_ref);

elevation_ref = data3.x_ref(5,:);
elevation_ref = rad2deg(elevation_ref);


%% Comparison between reference and measured travel and pitch
figure()
subplot(4,1,1)
plot(time3, travel_ref, 'm', time3, travel_ref, 'mo')
hold on
plot(time, travel)
title('Measured vs Reference travel')
legend('Travel ref','' ,'Travel')
grid on
xlabel('Time')
ylabel('Angle')

subplot(4,1,2)
plot(time3, travel_rate_ref, 'm', time3, travel_rate_ref, 'mo')
hold on
plot(time, travel_rate)
title('Measured vs Reference travel rate')
legend('Travel rate ref','' ,'Travel rate')
grid on
xlabel('Time')
ylabel('Angle [deg/s]')

subplot(4,1,3)
plot(time3, pitch_ref, 'm', time3, pitch_ref, 'mo')
hold on
plot(time, pitch)
title('Measured vs Reference pitch')
legend('Pitch ref','','Pitch')
grid on
xlabel('Time')
ylabel('Angle')

subplot(4,1,4)
plot(time3, elevation_ref, 'm', time3, elevation_ref, 'mo')
hold on
plot(time, elevation)
title('Measured vs Reference elevation')
legend('Elevation ref','','Elevation')
grid on
xlabel('Time')
ylabel('Angle')