clear all;
data1=load('a.txt');
data2=load('b.txt');
data3=load('c.txt');
data4=load('d.txt ');
data5=load('e.txt ');
data6=load('f.txt  ');
time=2e-4;
voltage=1e-2;
lw=1.5;
N1=5000;
d1=data1(90000:90000+N1-1)-3060;
d2=data2(19000:19000+N1-1)-3060;
d3=data3(42000:42000+N1-1)-3060;
d4=data4(53000:53000+N1-1)-3060;
d5=data5(20000:20000+N1-1)-3060;
d6=data6(20000:20000+N1-1)-3060;

h1=figure(1);
set(h1,'color','w','position',[300,300,800,500]);
plot(time*(1:N1),voltage*d1,'color',[0 0 0],'linewidth',lw);
hold on;
plot(time*(N1+1:2*N1),voltage*d2,'color',[0 0 1],'linewidth',lw);
hold on;
plot(time*(2*N1+1:3*N1),voltage*d3,'color',[1 0 0],'linewidth',lw);
hold on;
plot(time*(3*N1+1:4*N1),voltage*d4,'color',[0 0 0],'linewidth',lw);
hold on;
plot(time*(4*N1+1:5*N1),voltage*d5,'color',[0 0 1],'linewidth',lw);
hold on;
plot(time*(5*N1+1:6*N1),voltage*d6,'color',[1 0 0],'linewidth',lw);
hold on;
set(gca,'fontname','times new roman','fontsize',15,'box','off');
xlabel('Time(s)','fontname','times new roman','fontsize',15);
ylabel('Voltage(V)','fontname','times new roman','fontsize',15);
text(0.25,0.3,'7/50','fontname','times new roman','fontsize',20);
hold on;
text(1.1,0.5,'15/50','fontname','times new roman','fontsize',20);
hold on;
text(2.1,0.3,'30/50','fontname','times new roman','fontsize',20);
hold on;
text(3.2,0.3,'15/100','fontname','times new roman','fontsize',20);
hold on;
text(4.2,0.3,'30/100','fontname','times new roman','fontsize',20);
hold on;
text(5.2,0.35,'60/100','fontname','times new roman','fontsize',20);
hold on;
axis([0,6,-0.7,1]);
clc;
