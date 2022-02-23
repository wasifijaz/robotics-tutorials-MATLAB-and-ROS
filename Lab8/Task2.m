clear all; 
clc;
clf; 
close all;
format compact; 

r.b1 = 0.5; 
r.b2 = 0.4;
n = 5; 
q0 = [20/57.2952 30/57.2952]; 
qn = [40/57.2952 80/57.2952];
dq = (qn-q0)/(n-1); 
for i = 1:n 
    q(i,:) = q0 + dq*(i-1); 
    r = setjoint(r, q(i,1), q(i,2)); 
    q(i,:)=[r.q1(1) r.q2(1)]; 
    p(i,:) = [r.p(1) r.p(2)]; 
end 
x = [0 0 0]; 
y = [0 0 0]; 
for i = 1:length(q) 
    xo = x; 
    yo = y; 
    x(1) = 0; 
    y(1) = 0;
    x(2) = r.b1*cos(q(i,1)); y(2)=r.b1*sin(q(i,1)); 
    x(3) = x(2)+r.b2*cos(q(i,1)+q(i,2)); 
    y(3) = y(2)+r.b2*sin(q(i,1)+q(i,2)); 
    plot(xo,yo,'k-'); 
    hold on 
    plot(x,y,'k-'); 
    hold on
    plot(x,y,'r.'); 
    hold on
    axis equal; 
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