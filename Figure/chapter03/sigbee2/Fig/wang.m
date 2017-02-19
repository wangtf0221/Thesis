%% dir model.simultaneous-plot data
clear;clc;clf;
fid1=fopen('init.vp','r');
for j=1:320
    lowvel_init_vp(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

fid1=fopen('true.vp','r');
for j=1:320
    lowvel_vp(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

fid1=fopen('de.vp','r');
%fid1=fopen('modeloutput_decomp_vp_stage4_it_24.bin','r');
for j=1:320
    devp(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

%fid1=fopen('modeloutput_vs1vp2_vp_stage5_it_26.bin','r');
fid1=fopen('node.vp','r');
%fid1=fopen('modeloutput_nodecomp_vp_stage1_it_17.bin','r');
for j=1:320
    nodevp(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

fid1=fopen('init.vs','r');
for j=1:320
    lowvel_init_vs(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

fid1=fopen('true.vs','r');
for j=1:320
    lowvel_vs(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

fid1=fopen('de.vs','r');
%fid1=fopen('modeloutput_decomp_vs_stage4_it_24.bin','r');
for j=1:320
    devs(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

%fid1=fopen('modeloutput_vs1vp2_vs_stage5_it_26.bin','r');
fid1=fopen('node.vs','r');
%fid1=fopen('modeloutput_nodecomp_vs_stage1_it_17.bin','r');
for j=1:320
    nodevs(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

%aaaa= 600;% location at 3km
%aaaa= 1906;% location at 9.km
aaaa= 200;% location at 9.km
%aaaa= 650;% location at 9.km
fid=figure(1);
get(fid,'position')
set(fid,'position',[200 100 570 770]);%set figure position and size ([left bottom width height]) on the screen.
plot(lowvel_vp(:,aaaa),[1:160],'k','linewidth',1.5);
hold on
plot(lowvel_init_vp(:,aaaa),[1:160],'color','b','linewidth',1.5);
%plot(lowvel_init_vp(:,aaaa),[1:160],'color','b','linestyle','--','linewidth',1.5);
plot(modeloutput_decomp_vp_stage4_it_24.bin(:,aaaa),[1:160],'color',[0 204/255 51/255],'linewidth',1.5);
plot(modeloutput_nodecomp_vp_stage4_it_14.bin(:,aaaa),[1:160],'color',[1 204/255 0],'linewidth',1.5);
plot(lowvel_vs(:,aaaa)+000,[1:160],'k','linewidth',1.5);
plot(lowvel_init_vs(:,aaaa)+000,[1:160],'color','b','linewidth',1.5);
%plot(lowvel_init_vs(:,aaaa)+500,[1:160],'color','b','linestyle','--','linewidth',1.5);
plot(modeloutput_decomp_vs_stage4_it_24.bin(:,aaaa)+000,[1:160],'color',[0 204/255 51/255],'linewidth',1.5);
plot(modeloutput_nodecomp_vs_stage4_it_14.bin(:,aaaa)+000,[1:160],'color',[1 204/255 0],'linewidth',1.5);
set(gca,'ydir','reverse','xlim',[000 5075],'xtick',[0:1000:5075],'xticklabel','0.0|1.0|2.0|3.0|4.0|5.0','xaxislocation','top');
set(gca,'ylim',[1 701],'ytick',[1:200:701],'yticklabel','0.0|1.0|2.0|3.0|');
set(gca,'tickdir','out','linewidth',1);
set(gca,'fontsize',10,'fontname','times','fontweight','bold');
xlabel('P-wave velocity (km/s)','fontsize',12,'fontname','times','fontweight','bold');
ylabel('Depth (km)','fontsize',12,'fontname','times','fontweight','bold');
text(-50,730,'0.0','fontsize',10,'fontname','times','fontweight','bold');
text(950,730,'1.0','fontsize',10,'fontname','times','fontweight','bold');
text(1950,730,'2.0','fontsize',10,'fontname','times','fontweight','bold');
text(2950,730,'3.0','fontsize',10,'fontname','times','fontweight','bold');
text(3950,730,'4.0','fontsize',10,'fontname','times','fontweight','bold');
text(4950,730,'5.0','fontsize',10,'fontname','times','fontweight','bold');
text(1500,755,'S-wave velocity (km/s)','fontsize',12,'fontname','times','fontweight','bold');
line([3100 3480],[35 35],'color','k','linewidth',1.5);
text(3600,35,'True model','fontsize',10,'fontname','times','fontweight','bold');
line([3100 3480],[75 75],'color','b','linewidth',1.5);
%line([550 630],[45 45],'color','b','linestyle','--','linewidth',1.5);
text(3600,75,'Starting model','fontsize',10,'fontname','times','fontweight','bold');
line([3100 3480],[115 115],'color',[0 204/255 51/255],'linewidth',1.5);
text(3600,115,'MDPCG','fontsize',10,'fontname','times','fontweight','bold');
line([3100 3480],[155 155],'color',[1 204/255 0],'linewidth',1.5);
text(3600,155,'PCG','fontsize',10,'fontname','times','fontweight','bold');
%text(1750,20,{'Location 3.0 km'},'fontsize',12,'fontname','times','fontweight','bold');
%text(1750,35,{'(after initial Vp inversion)'},'fontsize',10,'fontname','times','fontweight','bold');
if(aaaa==600)
text(750,150,'Vs','fontsize',18,'fontname','times','fontweight','bold');
text(2050,150,'Vp','fontsize',18,'fontname','times','fontweight','bold');
end
if(aaaa==1920)
text(950,150,'Vs','fontsize',18,'fontname','times','fontweight','bold');
text(2250,150,'Vp','fontsize',18,'fontname','times','fontweight','bold');
end
% set 'figure/file/export setup/size/points' first,then print.
print(fid,'-r600','-depsc','tmp.eps');
