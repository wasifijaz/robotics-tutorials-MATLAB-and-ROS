clc 
clear all 
a1 = 0.5; 
a2 = 1; 
a3 = 1.5; 
d1 = 0.5; 
d5 = 1; 
L(1) = Link([0 d1 a1 -pi/2]); 
L(2) = Link([0 0 a2 0]); 
L(3) = Link([0 0 a3 0]); 
L(4) = Link([0 0 0 -pi/2]); 
L(5) = Link([0 d5 0 0]); 
RR = SerialLink(L); 
T = fkine(RR,[ 0 0 0 0 0]); 
RR.plot([ 0 0 0 0 0]) 
Q = RR.ikine(T,'[0 0 0 0 0]','mask',[1 1 1 1 1 0]) 