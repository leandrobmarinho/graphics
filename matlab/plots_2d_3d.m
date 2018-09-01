clear; close all; clc;

%% Line Plot
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)



%% Line Plot (two)
x = 0:pi/100:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);

% I
figure
plot(x,y1,x,y2,'--',x,y3,':', 'LineWidth', 3)

% II
figure
plot(x,y1, 'LineWidth', 3)
hold on 
plot(x,y2,'--')
hold on
plot(x,y3,':')
hold off


%% 3D plot
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);

figure
plot3(st,ct,t, '.')



%% Subplot
figure
subplot(2,1,1);
x = linspace(0,10);
y1 = sin(x);
plot(x,y1)

subplot(2,1,2); 
y2 = sin(5*x);
plot(x,y2, '--r')