%% dir model.simultaneous-plot data
clear;clc;clf;
fid1=fopen('nx1600nz300dxdz5.smooth.vp','r');
for j=1:1600
    lowvel_init_vp(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

fid1=fopen('nx1600nz300dxdz5.vp','r');
for j=1:1600
    lowvel_vp(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

fid1=fopen('modeloutput_vs1vp2_vp_stage13_it_10.bin','r');
for j=1:1600
    modeloutput_vs1vp2_vp_stage13_it_10.bin(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

fid1=fopen('modeloutput_vs1vp2_vp_stage13_it_21.bin','r');
for j=1:1600
    modeloutput_vs1vp2_vp_stage13_it_21.bin(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

fid1=fopen('nx1600nz300dxdz5.smooth.vs','r');
for j=1:1600
    lowvel_init_vs(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

fid1=fopen('nx1600nz300dxdz5.vs','r');
for j=1:1600
    lowvel_vs(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

fid1=fopen('modeloutput_vs1vp2_vs_stage13_it_10.bin','r');
for j=1:1600
    modeloutput_vs1vp2_vs_stage13_it_10.bin(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

fid1=fopen('modeloutput_vs1vp2_vs_stage13_it_21.bin','r');
for j=1:1600
    modeloutput_vs1vp2_vs_stage13_it_21.bin(:,j)=fread(fid1,[300 1],'float32');
end
fclose(fid1);

aaaa=700;
fid=figure(1);
get(fid,'position')
set(fid,'position',[200 100 570 770]);%set figure position and size ([left bottom width height]) on the screen.
plot(lowvel_vp(:,aaaa),[1:300],'k','linewidth',1.5);
hold on
plot(lowvel_init_vp(:,aaaa),[1:300],'color','b','linestyle','--','linewidth',1.5);
plot(modeloutput_vs1vp2_vp_stage13_it_10.bin(:,aaaa),[1:300],'color',[0 204/255 51/255],'linewidth',1.5);
plot(modeloutput_vs1vp2_vp_stage13_it_21.bin(:,aaaa),[1:300],'color',[1 204/255 0],'linewidth',1.5);
plot(lowvel_vs(:,aaaa)+500,[1:300],'k','linewidth',1.5);
plot(lowvel_init_vs(:,aaaa)+500,[1:300],'color','b','linestyle','--','linewidth',1.5);
plot(modeloutput_vs1vp2_vs_stage13_it_10.bin(:,aaaa)+500,[1:300],'color',[0 204/255 51/255],'linewidth',1.5);
plot(modeloutput_vs1vp2_vs_stage13_it_21.bin(:,aaaa)+500,[1:300],'color',[1 204/255 0],'linewidth',1.5);
set(gca,'ydir','reverse','xlim',[500 2375],'xtick',[500:250:2375],'xticklabel','0.5||1.0||1.5||2.0||','xaxislocation','top');
set(gca,'ylim',[1 301],'ytick',[1:50:301],'yticklabel','0.0||0.5||1.0||1.5||2.0|');
set(gca,'tickdir','out','linewidth',1);
set(gca,'fontsize',10,'fontname','times','fontweight','bold');
xlabel('P-wave velocity (km/s)','fontsize',12,'fontname','times','fontweight','bold');
ylabel('Depth (km)','fontsize',12,'fontname','times','fontweight','bold');
text(480,310,'0.0','fontsize',10,'fontname','times','fontweight','bold');
text(980,310,'0.5','fontsize',10,'fontname','times','fontweight','bold');
text(1480,310,'1.0','fontsize',10,'fontname','times','fontweight','bold');
text(1980,310,'1.5','fontsize',10,'fontname','times','fontweight','bold');
text(1135,320,'S-wave velocity (km/s)','fontsize',12,'fontname','times','fontweight','bold');
line([550 750],[25 25],'color','k','linewidth',1.5);
text(550,15,'True model','fontsize',10,'fontname','times','fontweight','bold');
line([550 750],[45 45],'color','b','linestyle','--','linewidth',1.5);
text(550,35,'Starting model','fontsize',10,'fontname','times','fontweight','bold');
line([550 750],[65 65],'color',[0 204/255 51/255],'linewidth',1.5);
text(550,55,'Inverted-Decomp model','fontsize',10,'fontname','times','fontweight','bold');
line([550 750],[85 85],'color',[1 204/255 0],'linewidth',1.5);
text(550,75,'Inverted-NoDecomp model','fontsize',10,'fontname','times','fontweight','bold');
text(1750,20,{'Line extraction'},'fontsize',12,'fontname','times','fontweight','bold');
%text(1750,35,{'(after initial Vp inversion)'},'fontsize',10,'fontname','times','fontweight','bold');
text(850,270,'Vs','fontsize',12,'fontname','times','fontweight','bold');
text(1650,270,'Vp','fontsize',12,'fontname','times','fontweight','bold');
% set 'figure/file/export setup/size/points' first,then print.
print(fid,'-r600','-depsc','tmp.eps');
