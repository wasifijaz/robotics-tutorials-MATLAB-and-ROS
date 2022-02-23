clear all; 
clc;
clf; 
close all;
format compact; 
r.b1 = 0.5; 
r.b2 = 0.4; 
n = 10; 
p0 = [ 0.2 0]; 
pn = [ 0.7 0.5]; 
dp = (pn-p0)/(n-1); 
for i=1:n 
    p(i,:) = p0 + dp*(i-1);
    r = setcoord( r, p(i,1),p(i,2) ); 
    r = setjoint(r, r.q1(1), r.q2(1)); 
    q(i,:) = [ r.q1(1) r.q2(1) ]; 
    p(i,:) = [r.p(1) r.p(2)]; 
end 
x = [0 0 0]; 
y = [0 0 0]; 
for i = 1:length(q) 
    xo = x; 
    yo = y; 
    x(1) = 0; y(1)=0;
    x(2) = r.b1*cos(q(i,1)); 
    y(2) = r.b1*sin(q(i,1)); 
    x(3) = x(2)+r.b2*cos(q(i,1)+q(i,2)); 
    y(3) = y(2)+r.b2*sin(q(i,1)+q(i,2)); 
    plot(xo,yo,'k-'); 
    hold on
    plot(x,y,'k-'); 
    hold on
    plot(x+0.001,y,'r.'); 
    hold on
    axis equal; 
    axis([-0.05 0.75 -0.05 0.55]); 
    pause(0.01); 
end

function rr = setjoint(r,q1,q2)
    rr = r; 
    rr.q1 = q1; 
    rr.q2 = q2; 
    rr.q = [q1 q2]; 
    rr.S1 = sin(q1); 
    rr.C1 = cos(q1); 
    rr.S2 = sin(q2); 
    rr.C2 = cos(q2); 
    rr.S12 = sin(q1+q2); 
    rr.C12 = cos(q1+q2); 
    rr.x0 = rr.b2*rr.C12+rr.b1*rr.C1; 
    rr.y0 = rr.b2*rr.S12+rr.b1*rr.S1; 
    rr.p = [rr.x0 rr.y0]; 
end 

function rr = setcoord(r,x0,y0)
    rr = r; 
    c = (x0^2+y0^2+r.b1^2-r.b2^2)/2.0/r.b1; 
    rr.q1 = [atan2(y0,x0)+atan2(sqrt(x0^2+y0^2-c^2), c) 
    atan2(y0,x0)- atan2(sqrt(x0^2+y0^2-c^2), c)]; 
    rr.S1 = sin(rr.q1); 
    rr.C1 = cos(rr.q1); 
    rr.q2 = atan2( y0-r.b1*rr.S1, x0-r.b1*rr.C1)-rr.q1; 
    rr.S2 = sin(rr.q2); 
    rr.C2 = cos(rr.q2); 
    rr.S12 = sin(rr.q1+rr.q2); 
    rr.C12 = cos(rr.q1+rr.q2);  
end