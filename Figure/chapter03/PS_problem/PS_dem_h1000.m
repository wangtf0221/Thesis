clear

%vs=1500;vp=3000;Depth=1000;r=vs/vp;
%h=ezplot(@(a,x)myfun(a,x,r,Depth),[0 1 -2000 2000])
%C=get(h,'contourMatrix');
%a=C(1,2:end);
%X=C(2,2:end);
%t=Depth./cos(asin(a))/vp+Depth./cos(asin(0.5*a))/vs;
%plot(X,t,'r')
%hold on

%%%%%%%%%%% Map migration (stack impulse)%%%%%%%
%%%%% single shot %%%%%%%
%for k=1:10:181  
%   ezplot(@(x,y)myfun(x,y,sx,rx,vp,vs,t(k)),[-2000 2000 -2000  2000]); 
%   hold on; 
%end
%%%%% single offset multishot%%%%%%%
%for k=100:50:400
%   ezplot(@(x,y)myfun(x,y,sx+k,X(120)+k,vp,vs,t(120)),[-2000 2000 -2000    2000]); 
%   hold on; 
%end

%%%%%%%%%  Matrix manner to compute Demigration traveltime %%%%%%%
%clear
%vp_dem=2450:20:2550;vs_dem=1300;vs=1500;vp=2500;h=700;
%Depth_dem=(vs_dem/vs*(vp+vs)./(vp_dem+vs_dem))*h;
%r1=vs_dem./vp_dem;
%sx=200;rx=1000;
%a=0:pi/(180*4):pi/6;
%a11=asin(r1'*sin(a));
%X1=repmat(Depth_dem',[1,121]).*(repmat(tan(a),[6 1])+tan(a11));
%t1=((Depth_dem./vp_dem)'*cos(a)+(repmat(Depth_dem',[1,121])./cos(a11))/vs_dem);
%plot(X1',t1')

%%%%%%%%%  For loop manner to compute Demigration traveltime %%%%%%%
%%%%%%  Demigration with PS image %%%%%%%
fid=figure(1);
get(fid,'position')
set(fid,'position',[200 100 500 500]);%set figure position and size ([left bottom width height]) on the screen.
hold on
%plot(lowvel_init_vp(:,aaaa),[1:700],'color','b','linestyle','--','linewidth',1.5);
set(gca,'ydir','reverse','xlim',[-1000 1000],'xtick',[-1000:500:1000],'xticklabel','-1.0|-0.5|0.0|0.5|1.0','xaxislocation','top');
set(gca,'ylim',[1 1.32],'ytick',[1:0.1:1.4],'yticklabel','1.0|1.1|1.2|1.3');
%set(gca,'ylim',[0.5 1.5],'ytick',[0.5:0.25:1.5],'yticklabel','0.5|0.75|1.25|1.5');
set(gca,'tickdir','out','linewidth',1);
set(gca,'fontsize',10,'fontname','times','fontweight','bold');
xlabel('Offset (km)','fontsize',12,'fontname','times','fontweight','bold');
ylabel('Time (s)','fontsize',12,'fontname','times','fontweight','bold');
text(1500,2000,'0.0','fontsize',10,'fontname','times','fontweight','bold');
%text(950,730,'1.0','fontsize',10,'fontname','times','fontweight','bold');
%text(1950,730,'2.0','fontsize',10,'fontname','times','fontweight','bold');
%text(2950,730,'3.0','fontsize',10,'fontname','times','fontweight','bold');
%text(3950,730,'4.0','fontsize',10,'fontname','times','fontweight','bold');
%text(4950,730,'5.0','fontsize',10,'fontname','times','fontweight','bold');
%
vs=1500;vp=2500;h=1000;
for i=2450:50:2550
    vp_dem=i;vs_dem=1300;
    Depth_dem=(vs_dem/vs*(vp+vs)/(vp_dem+vs_dem))*h;
%   Depth_dem=h;
    r1=vs_dem/vp_dem;
    sx=200;rx=1000;
    a=-pi/4:pi/(180*4):pi/4;
    a11=asin(r1*sin(a));
    X1=Depth_dem*(tan(a)+tan(a11));
    %t=(h/cos(a)/vp+h/cos(a*r)/vs);
    t1=(Depth_dem./cos(a)/vp_dem+Depth_dem./cos(a11)/vs_dem);
    hold on
	plot(X1,t1,'k--')
end

text(3,1.045,'1','fontsize',15,'fontname','times','fontweight','bold');
text(3,1.066,'2','fontsize',15,'fontname','times','fontweight','bold');
text(3,1.089,'3','fontsize',15,'fontname','times','fontweight','bold');
text(3,1.153,'1','fontsize',15,'fontname','times','fontweight','bold');
text(3,1.169,'2','fontsize',15,'fontname','times','fontweight','bold');
text(3,1.184,'3','fontsize',15,'fontname','times','fontweight','bold');
text(-800,1.31,'1:V{\prime}p=2450m/s','fontsize',10,'fontname','times','fontweight','bold');
text(-200,1.31,'2:V{\prime}p=2500m/s','fontsize',10,'fontname','times','fontweight','bold');
text(400,1.31,'3:V{\prime}p=2550m/s','fontsize',10,'fontname','times','fontweight','bold');
%%%%%% PS Traveltime with True Vp%%%%%%%
    vp_dem=2500;vs_dem=1500;
    Depth_dem=(vs_dem/vs*(vp+vs)/(vp_dem+vs_dem))*h;
%   Depth_dem=h;
    r1=vs_dem/vp_dem;
    sx=200;rx=1000;
    a=-pi/4:pi/(180*4):pi/4;
    a11=asin(r1*sin(a));
    X1=Depth_dem*(tan(a)+tan(a11));
    %t=(h/cos(a)/vp+h/cos(a*r)/vs);
    t1=(Depth_dem./cos(a)/vp_dem+Depth_dem./cos(a11)/vs_dem);
    hold on
    plot(X1,t1,'r')

%%%%%% PS Demigration with True depth%%%%%%%
for i=2450:50:2550
    vp_dem=i;vs_dem=1300;
%   Depth_dem=(vs_dem/vs*(vp+vs)/(vp_dem+vs_dem))*h;
    Depth_dem=(vp_dem)/vp*h;
    r1=vs_dem/vp_dem;
    sx=200;rx=1000;
    a=-pi/4:pi/(180*4):pi/4;
    a11=asin(r1*sin(a));
    X1=Depth_dem*(tan(a)+tan(a11));
    %t=(h/cos(a)/vp+h/cos(a*r)/vs);
    t1=(Depth_dem./cos(a)/vp_dem+Depth_dem./cos(a11)/vs_dem);
    hold on
    plot(X1,t1,'b--')
end
%for i=2450:20:2550
%    vp_dem=i;vs_dem=1300;
%%   Depth_dem=(vs_dem/vs*(vp+vs)/(vp_dem+vs_dem))*h;
%    Depth_dem=450;
%    r1=vs_dem/vp_dem;
%    sx=200;rx=1000;
%    a=-pi/4:pi/(180*4):pi/4;
%    a11=asin(r1*sin(a));
%    X1=Depth_dem*(tan(a)+tan(a11));
%    %t=(h/cos(a)/vp+h/cos(a*r)/vs);
%    t1=(Depth_dem./cos(a)/vp_dem+Depth_dem./cos(a11)/vs_dem);
%    hold on
%    plot(X1,t1,'g')
%end
%
