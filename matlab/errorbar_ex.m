clear; close all; clc;

%% Bar
y = [2 2 3; 2 5 6];
bar(y)



%% Errorbar (tradiotinal)
x = linspace(0,10,15); % Generate linearly spaced vector
y = sin(x/2);
err = 0.3*ones(size(y));
figure
errorbar(x,y,err,'-s','MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')



%% Bar + errorbar (adapted)
% Loading data
values = csvread('../data/mean.txt'); values = values*100;
erros = csvread('../data/errors.txt'); erros = erros*100;


figure
bar_color=[216,179,101; 90,180,172]/255;
h = errorb(values, erros, 'Color', [0 0 0], 'BarColor', bar_color);
% Created by community and adapted by me


% Attributes
% Maximize the window 
set(gcf,'units','normalized','outerposition',[0 0 1 1])
% Without extern space
set(gca,'LooseInset',get(gca,'TightInset'))

% X and Y limits
ylim([0 105])

% Axis size
ax = gca;
set(gca,'FontSize',45)

% Legend
l = {'Normal', 'With Reject Option'};
l = legend(h,l,'Location','northoutside', 'Orientation', 'horizontal');
set(l,'FontSize',60);

% Grid on
grid on

% X tick label
namesAxisX = {'Bayes', 'MLP', 'SVM-Lin', 'SVM-RBF'};
set(gca,'XTickLabel', namesAxisX)

% Y label
ylabel('Accuracy', 'FontSize', 100, 'interpreter','latex')


% Saving
print('BarPlot','-depsc')