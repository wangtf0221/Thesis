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

%fid1=fopen('de.vp','r');
fid1=fopen('newinit3.vp','r');
%fid1=fopen('decomp_newinit3_vp_stage4_it_19.bin','r'); %%%%%%%%20 iter result %%%%
%fid1=fopen('decomp_newinit3_test_vp_stage1_it_40.bin','r');
for j=1:320
    devp(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

%fid1=fopen('modeloutput_vs1vp2_vp_stage5_it_26.bin','r');
fid1=fopen('node.vp','r');
%fid1=fopen('newinit3_vp_stage4_it_19.bin','r'); %%%%%%%%20 iter result %%%%
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
%fid1=fopen('de.vs','r');
fid1=fopen('newinit3.vs','r');
%fid1=fopen('decomp_newinit3_test_vs_stage1_it_40.bin','r');
%fid1=fopen('decomp_newinit3_vs_stage4_it_19.bin','r'); %%%%%%%%%%%%20 Iter result%%%%%%%%
%fid1=fopen('modeloutput_decomp_vs_stage4_it_24.bin','r');
for j=1:320
    devs(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);

%fid1=fopen('modeloutput_vs1vp2_vs_stage5_it_26.bin','r');
fid1=fopen('node.vs','r');
%fid1=fopen('newinit3_vs_stage4_it_19.bin','r'); %%%%%%%%%%%%20 Iter result%%%%%%%%
%fid1=fopen('modeloutput_nodecomp_vs_stage1_it_17.bin','r');
for j=1:320
    nodevs(:,j)=fread(fid1,[160 1],'float32');
end
fclose(fid1);


%aaaa= 600;% location at 3km
%aaaa= 1906;% location at 9.km
aaaa= 200;% location at 9.km
fid=figure(1);
get(fid,'position')
set(fid,'position',[200 100 700 470]);%set figure position and size ([left bottom width height]) on the screen.
ax1=subplot(2,1,1);
get(ax1,'position')
set(ax1,'position',[0.1100    0.5800    0.8500    0.3800]);
hold on
%%%%%%%%%%%%%%%%%%%for 20-160 data %%%%%%%%%%%%%
plot([1:141],lowvel_vp([20:160],aaaa),'k','linewidth',1.5);
plot([1:141],lowvel_init_vp([20:160],aaaa),'color','b','linewidth',1.5);
plot([1:141],devp([20:160],aaaa),'color',[0 204/255 51/255],'linewidth',1.5);
plot([1:141],nodevp([20:160],aaaa),'color',[1 204/255 0],'linewidth',1.5);
set(ax1,'ydir','normal','ylim',[1500 3000],'ytick',[1500:500:3000],'yticklabel','1.5|2.0|2.5|3.0','yaxislocation','left');
set(ax1,'xlim',[1 141],'xtick',[1:62.5:141],'xticklabel','0.0|1.0|2.0');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%for whole data %%%%%%%%%%%%%
%plot([1:160],lowvel_vp(:,aaaa),'k','linewidth',1.5);
%plot([1:160],lowvel_init_vp(:,aaaa),'color','b','linewidth',1.5);
%plot([1:160],devp(:,aaaa),'color',[0 204/255 51/255],'linewidth',1.5);
%plot([1:160],nodevp(:,aaaa),'color',[1 204/255 0],'linewidth',1.5);
%set(ax1,'ydir','normal','ylim',[1500 3000],'ytick',[1500:500:3000],'yticklabel','1.5|2.0|2.5|3.0','yaxislocation','left');
%set(ax1,'xlim',[1 160],'xtick',[1:62.5:160],'xticklabel','0.0|1.0|2.0');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(ax1,'tickdir','out','linewidth',1,'box','on');
set(ax1,'fontsize',10,'fontname','times','fontweight','bold');
ylabel('Vp(km/s)','fontsize',12,'fontname','times','fontweight','bold');
%ylabel('Density(10^3*kg/m^3)','fontsize',12,'fontname','times','fontweight','bold');
%xlabel('Depth (km)','fontsize',12,'fontname','times','fontweight','bold');
b=160;c=20;
line([560 590]-b,[335*2 335*2]+1000,'color','k','linewidth',1.5);
text(600-b,335*2+1000,'True model','fontsize',10,'fontname','times','fontweight','bold');
line([560 590]-b,[135*2 135*2]+1000,'color','b','linewidth',1.5);
text(600-b,135*2+1000,'Starting model','fontsize',10,'fontname','times','fontweight','bold');
line([560 590]+c,[335*2 335*2]+1000,'color',[0 204/255 51/255],'linewidth',1.5);
text(600+c,335*2+1000,'MDPCG','fontsize',10,'fontname','times','fontweight','bold');
line([560 590]+c,[135*2 135*2]+1000,'color',[1 204/255 0],'linewidth',1.5);
text(600+c,135*2+1000,'PCG','fontsize',10,'fontname','times','fontweight','bold');
text(-70,5000,'(c)','fontsize',16,'fontname','times','fontweight','bold');
%if(aaaa==650)
%text(750,150,'Vs','fontsize',18,'fontname','times','fontweight','bold');
%text(2050,150,'Vp','fontsize',18,'fontname','times','fontweight','bold');
%end
%if(aaaa==1920)
%text(950,150,'Vs','fontsize',18,'fontname','times','fontweight','bold');
%text(2250,150,'Vp','fontsize',18,'fontname','times','fontweight','bold');
%end
% set 'figure/file/export setup/size/points' first,then print.
ax2=subplot(2,1,2);
hold on
%%%%%%%%%%%%%%%%%for 20-160 data%%%%%%%%%%%%%%%%%
set(ax2,'position',[0.1100    0.0800    0.8500    0.3800]);
plot([1:141],lowvel_vs([20:160],aaaa),'k','linewidth',1.5);
plot([1:141],lowvel_init_vs([20:160],aaaa),'color','b','linewidth',1.5);
plot([1:141],devs([20:160],aaaa),'color',[0 204/255 51/255],'linewidth',1.5);
plot([1:141],nodevs([20:160],aaaa),'color',[1 204/255 0],'linewidth',1.5);
set(ax2,'ydir','normal','ylim',[1000 2000],'ytick',[1000:500:2000],'yticklabel','1.0|1.5|2.0','yaxislocation','left');
set(ax2,'xlim',[1 141],'xtick',[1:62.5:141],'xticklabel','0.0|1.0|2.0');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%% for whole data%%%%%%%%%%%%%%%%%%%%
%set(ax2,'position',[0.1100    0.0800    0.8500    0.3800]);
%plot([1:160],lowvel_vs(:,aaaa),'k','linewidth',1.5);
%plot([1:160],lowvel_init_vs(:,aaaa),'color','b','linewidth',1.5);
%plot([1:160],devs(:,aaaa),'color',[0 204/255 51/255],'linewidth',1.5);
%plot([1:160],nodevs(:,aaaa),'color',[1 204/255 0],'linewidth',1.5);
%set(ax2,'ydir','normal','ylim',[1000 2000],'ytick',[1000:500:2000],'yticklabel','1.0|1.5|2.0','yaxislocation','left');
%set(ax2,'xlim',[1 160],'xtick',[1:62.5:160],'xticklabel','0.0|1.0|2.0');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%set(ax2,'xlim',[1 160],'xtick',[1:200:701],'xticklabel','0.0|1.0|2.0|3.0|');
set(ax2,'tickdir','out','linewidth',1,'box','on');
set(ax2,'fontsize',10,'fontname','times','fontweight','bold');
ylabel('Vs(km/s)','fontsize',12,'fontname','times','fontweight','bold');
b=160;c=20;
line([560 590]-b,[335*1.5 335*1.5],'color','k','linewidth',1.5);
text(600-b,335*1.5,'True model','fontsize',10,'fontname','times','fontweight','bold');
line([560 590]-b,[135*1.5 135*1.5],'color','b','linewidth',1.5);
text(600-b,135*1.5,'Starting model','fontsize',10,'fontname','times','fontweight','bold');
line([560 590]+c,[335*1.5 335*1.5],'color',[0 204/255 51/255],'linewidth',1.5);
text(600+c,335*1.5,'MDPCG','fontsize',10,'fontname','times','fontweight','bold');
line([560 590]+c,[135*1.5 135*1.5],'color',[1 204/255 0],'linewidth',1.5);
text(600+c,135*1.5,'PCG','fontsize',10,'fontname','times','fontweight','bold');
text(-70,3000,'(d)','fontsize',16,'fontname','times','fontweight','bold');
