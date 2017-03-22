clear all;clf;
Id=fopen('vs.scatter.Px','r');
A=fread(Id,[800,800],'float');
fclose(Id);
fid=figure(1);
haxes=axes('Parent',fid);
set(haxes,'position',[0.13 0.11 0.6589 0.815]);
imagesc(A);
caxis([-2e-9,2e-9]);
colormap(gray);
hold on
axis equal
plot(400,10,'r*','markersize',10);
plot(400,400,'r.','markersize',15);
%ch=colorbar
%set(ch,'tickdir','out','ytick',[0:500:1040],'yticklabel','0|0.5|1','fontname','times','fontweight','bold','fontsize',12);
%set(get(ch,'ylabel'),'String','Vs (km/s)','fontname','times','fontweight','bold','fontsize',12);
%x=[11:10:391];
% colorbar
set(gca,'xaxislocation','top','tickdir','out','box','off','linewidth',0.5);
set(gca,'xlim',[1 800],'ylim',[1 800]);
set(gca,'xtick',[1,200:200:800],'xticklabel','0|2|4|6|8');
set(gca,'ytick',[1,200:200:800],'yticklabel','0|2|4|6|8');
set(gca,'fontname','times','fontweight','bold','fontsize',12);
ylabel('Depth (km)','fontname','times','fontweight','bold','fontsize',12);
xlabel('Position (km)','fontname','times','fontweight','bold','fontsize',12);

set(haxes,'position',[0.13 0.11 0.6589 0.815]);
%get(ch,'outerposition')
%set(ch,'outerposition',[0.79 0.4133 0.09 0.2072]);

% get(haxes,'position')
% set(haxes,'position',[0.13 0.11 0.6589 0.815]);
% chposi=get(ch,'outerposition')
% set(ch,'outerposition',[0.79 0.2367 0.09 0.5422]);
print(fid,'-r600','-depsc','vs.scatter.Px.eps');
