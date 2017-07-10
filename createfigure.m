function createfigure(NDT1, Y1)
%CREATEFIGURE(NDT1, Y1)
%  NDT1:   x 数据的矢量
%  Y1: y 数据的矢量

%   由 MATLAB 于 28-Jun-2017 21:28:14 自动生成

%  创建 figure
figure1 = figure('Color',[1 1 1]);

%  创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% 创建plot
plot(NDT1, Y1);

% 创建xlabel
xlabel({'时间/(s)'},'FontName','宋体');

% 创建ylabel
ylabel({'电压/(mV)'},'FontName','宋体');

% 取消以下行的注释以保留坐标轴的 X 范围
xlim(axes1,[4 10]);
ylim(axes1,[-5 5]);
set(gca,'Xtick',4:1.2:10)
set(gca,'ytick',-5:2.5:5)
set(gca, 'XTickLabel', { 0:0.4:2}','FontSize',25)
set(gca, 'YTickLabel', {-5:2.5:5},'FontSize',25)
set(gcf, 'Position', [275 250 1400 500]);

box(axes1,'on');
% 设置其余坐标轴属性
set(axes1,'FontName','宋体','box','off');
set(gca,'Fontname','宋体');
%生成图片
myFileName=['iLoveMATLAB' num2str() '.jpg'] %这里的2可以改成动态的数字
print('-djpeg',myFileName,'-r100');
