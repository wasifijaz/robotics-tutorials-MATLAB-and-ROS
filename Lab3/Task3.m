clear all 
clc 
L1 = 0;
L2 = 1; 
L3 = 2; 
L(1) = Link([0 0 0 0]); 
L(2) = Link([0 0 0 -90]); 
L(3) = Link([0 0 L2 0]); 
L(4) = Link([0 0 L3 0]); 
L(5) = Link([0 0 0 90]); 
Robot = SerialLink(L); 
Robot.plot([0 0 0 0 0]) 
T =fkine([Robot],[0 0 pi/180 0 0])