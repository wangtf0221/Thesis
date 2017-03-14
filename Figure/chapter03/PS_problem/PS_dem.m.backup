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
vs=1500;vp=2500;h=500;
for i=2450:20:2550
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
    plot(X1,t1,'r')
end

%%%%%% PS image with True Vp%%%%%%%
    vp_dem=2500;vs_dem=1300;
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
    plot(X1,t1,'b')

%%%%%% PS Demigration with True depth%%%%%%%
for i=2450:20:2550
    vp_dem=i;vs_dem=1300;
%   Depth_dem=(vs_dem/vs*(vp+vs)/(vp_dem+vs_dem))*h;
    Depth_dem=h;
    r1=vs_dem/vp_dem;
    sx=200;rx=1000;
    a=-pi/4:pi/(180*4):pi/4;
    a11=asin(r1*sin(a));
    X1=Depth_dem*(tan(a)+tan(a11));
    %t=(h/cos(a)/vp+h/cos(a*r)/vs);
    t1=(Depth_dem./cos(a)/vp_dem+Depth_dem./cos(a11)/vs_dem);
    hold on
    plot(X1,t1,'r')
end

for i=2450:20:2550
    vp_dem=i;vs_dem=1300;
%   Depth_dem=(vs_dem/vs*(vp+vs)/(vp_dem+vs_dem))*h;
    Depth_dem=450;
    r1=vs_dem/vp_dem;
    sx=200;rx=1000;
    a=-pi/4:pi/(180*4):pi/4;
    a11=asin(r1*sin(a));
    X1=Depth_dem*(tan(a)+tan(a11));
    %t=(h/cos(a)/vp+h/cos(a*r)/vs);
    t1=(Depth_dem./cos(a)/vp_dem+Depth_dem./cos(a11)/vs_dem);
    hold on
    plot(X1,t1,'g')
end

