%%%%%Ps wave Travel time%%%%%%
%function z=myfun(a,x,r,Depth)
%z=Depth*(a/sqrt(1-a*a)+r*a/sqrt(1-r*r*a*a))-abs(x);

%%%%%Ps wave migration impulse%%%%%%
function z=myfun(x,y,xs,rs,vp,vs,t)
z=sqrt((x-xs)^2+y^2)/vp+sqrt((x-rs)^2+y^2)/vs-t;
