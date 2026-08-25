clear all;

%%%%%%%% 這邊是有另外存data，把data load進來用的
n_theta = 20;
q = linspace(0,1,n_theta);

% load('nx_15_PVM_c_bit flip_1-c_depolarizing_final_max.mat');
% load('nx_15_PVM_c_bit flip_1-c_depolarizing_final_min.mat');
% load('nx_15_PVM_c_bit flip_1-c_depolarizing_final_PPT.mat');

load('nx_12_PVM_c_bit flip_1-c_depolarizing_final_max.mat');
%load('nx_12_POVM_c_bit flip_1-c_depolarizing_final_min.mat');
load('nx_12_PVM_c_bit flip_1-c_depolarizing_final_PPT.mat');
%%%%%%%%%

figure(1);

ax = gca;  %%%這兩行擺的前後順序可以影響到是否能夠讓label跟tickes的字體都是大的
ax.FontWeight = 'normal';
set(ax,'FontSize',50); % the position of these two lines determines if the fontsize of label and tickes are both enlarged
% ax.FontSize = 50;  

axis([0 1 0.45 0.65]) %決定要顯示的xy軸的範圍，順序是[x_min x_max y_min y_max]
pbaspect([16 7 1]);        % 統一框長寬比例為 16:7
exportgraphics(gcf,'myplot.pdf','ContentType','vector');  % 輸出向量檔更銳利
box on; %圖形外圍有框起來

hold on; %之後有要多組數據疊在同一張圖的時候，先呼叫這個指令。之後在plot的時候不會刪掉舊的plot


% plot(q(Result1 > -0.1),Result1(Result1 > -0.1),'b','LineWidth',1.1);
% plot(q(Result > 0), Result(Result > 0))  

% q2 = theta;
% theta2(1) = [];
% DIIR(1) = [];

plot(q(Result > 0),Result(Result > 0),'r','LineWidth',8); %順序是 (x軸data, y軸data, 曲線顏色, 'LineWidth'(線條粗細的指令，不用改它), 線條粗細)
%plot(q(Result1 > -0.1),Result1(Result1 > -0.1),'b--','LineWidth',8);
plot(q,Result2,'k:','LineWidth',8);

% ylabel({'bounds on $\mathcal{IR}(\{E_{a|x}^{\rm A}\})$'},'FontSize', 25,'Interpreter','latex');
% xlabel({'$\theta$'},'FontSize', 25,'Interpreter','latex');


title({'Measurement Number = 12, PVM'},'FontSize', 65,'Interpreter','latex');
ylabel({'Channel coefficient $w$'},'FontSize', 65,'Interpreter','latex');
xlabel({'$c$'},'FontSize',65,'Interpreter','latex');
% 上面兩行是x,y軸的文字敘述。順序為(軸的文字敘述, 'FontSize'(字體大小指令，不用改它), 字體大小, 'Interpreter','latex') <----最後兩個是說用latex來寫軸的文字敘述
% 跟用latex寫文章的時候一樣，要寫數學符號的時候需要用$$包夾住

legend({'LHS model (max w)','Separability'},'FontSize', 45,'Interpreter','latex')
% 繪製多條曲線時需要的圖例

% 
% %%%%%% set the number of ticks of axis
% % ref: https://www.mathworks.com/help/matlab/creating_plots/change-tick-marks-and-tick-labels-of-graph-1.html
xticks([0 0.2 0.4 0.6 0.8 1])
% xticklabels({'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'})
yticks([0.45 0.5 0.55 0.6 0.65])

