function createfigure(NDT1, Y1)
%CREATEFIGURE(NDT1, Y1)
%  NDT1:   x ���ݵ�ʸ��
%  Y1: y ���ݵ�ʸ��

%   �� MATLAB �� 28-Jun-2017 21:28:14 �Զ�����

%  ���� figure
figure1 = figure('Color',[1 1 1]);

%  ���� axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% ����plot
plot(NDT1, Y1);

% ����xlabel
xlabel({'ʱ��/(s)'},'FontName','����');

% ����ylabel
ylabel({'��ѹ/(mV)'},'FontName','����');

% ȡ�������е�ע���Ա���������� X ��Χ
xlim(axes1,[4 10]);
ylim(axes1,[-5 5]);
set(gca,'Xtick',4:1.2:10)
set(gca,'ytick',-5:2.5:5)
set(gca, 'XTickLabel', { 0:0.4:2}','FontSize',25)
set(gca, 'YTickLabel', {-5:2.5:5},'FontSize',25)
set(gcf, 'Position', [275 250 1400 500]);

box(axes1,'on');
% ������������������
set(axes1,'FontName','����','box','off');
set(gca,'Fontname','����');
%����ͼƬ
myFileName=['iLoveMATLAB' num2str() '.jpg'] %�����2���Ըĳɶ�̬������
print('-djpeg',myFileName,'-r100');
