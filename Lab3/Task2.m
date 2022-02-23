clear all
clc 
L1 = 1; 
L2 = 2; 
L3 = 3; 
L(1) = Link([0 0 0 0]); 
L(2) = Link([0 0 L1 90]); 
L(3) = Link([0 0 L2 0]); 
Robot3 = SerialLink(L); 
Robot3.plot([pi/2 pi/2 pi/2 ]) 
T = fkine([Robot3],[pi/2 pi/2 pi/2]) 