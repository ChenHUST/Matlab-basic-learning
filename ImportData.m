NDT_a=importdata('E:\WorkSpace\Matlab\a.txt');
NDT_b=importdata('E:\WorkSpace\Matlab\b.txt');
NDT_c=importdata('E:\WorkSpace\Matlab\c.txt');
NDT_d=importdata('E:\WorkSpace\Matlab\d.txt ');
NDT_e=importdata('E:\WorkSpace\Matlab\e.txt ');
NDT_f=importdata('E:\WorkSpace\Matlab\f.txt  ');

NDT_a=(NDT_a-3050)/130;
NDT_b=(NDT_b-3050)/130;
NDT_c=(NDT_c-3050)/130;
NDT_d=(NDT_d-3050)/130;
NDT_e=(NDT_e-3050)/130;
NDT_f=(NDT_f-3050)/130;

t1=1:length(NDT_a);
t1=t1/250000*64;
t2=1:length(NDT_b);
t2=t2/250000*64;
t3=1:length(NDT_c);
t3=t3/250000*64;
t4=1:length(NDT_d);
t4=t4/250000*64;
t5=1:length(NDT_e);
t5=t5/250000*64;
t6=1:length(NDT_f);
t6=t6/250000*64;





