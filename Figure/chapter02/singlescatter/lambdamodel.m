clear all;
Id=fopen('modeloutput_vp_it_20.bin_cut','r');
A=fread(Id,[201,401],'float');
fclose(Id);
fid=figure(1);
haxes=axes('Parent',fid);
set(haxes,'position',[0.13 0.11 0.6589 0.815]);
imagesc(A);
caxis([8.3e9,1.15e10]);
ch=colorbar;
set(ch,'tickdir','out','ytick',[9e9:1e9:11e9],'yticklabel','9|10|11','fontname','times','fontweight','bold','fontsize',12);
set(get(ch,'ylabel'),'String','\lambda (1x10^9 Pa)','fontname','times','fontweight','bold','fontsize',12);
x=[11:10:391];
hold on
axis equal
% colorbar
set(gca,'xaxislocation','top','tickdir','out','box','off','linewidth',0.5);
set(gca,'xlim',[1 401],'ylim',[1 201]);
set(gca,'xtick',[1,100:100:400],'xticklabel','0|1|2|3|4');
set(gca,'ytick',[1,100:100:200],'yticklabel','0|1|2');
set(gca,'fontname','times','fontweight','bold','fontsize',12);
ylabel('Depth (km)','fontname','times','fontweight','bold','fontsize',12);
xlabel('Position (km)','fontname','times','fontweight','bold','fontsize',12);

get(haxes,'position')
set(haxes,'position',[0.13 0.11 0.6589 0.815]);
% chposi=get(ch,'outerposition')
get(ch,'outerposition')
set(ch,'outerposition',[0.79 0.2343 0.11 0.5622]);
print(fid,'-r600','-depsc','onlyPdecompvp.eps');