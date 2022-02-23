clc 
clear all 
Ll =0.250; 
L2 =0.350; 
d1 =0.300;
L(1)= Link([d1 Ll 0 -180]);
L(2)= Link([0 L2 0 -90]);
L(3)= Link([0 0 180 0]);
L(4)= Link([0 0 0 0]);
RR = SerialLink(L);
t = fkine(RR ,[0 0 0 0])
RR.plot([-250 350 300 0])
Q = RR.ikine (t, '[0 0 0 0]', 'mask', [1 1 1 1 0 0])
