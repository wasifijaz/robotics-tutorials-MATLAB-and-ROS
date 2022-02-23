clc 
clear all
a2 = 0.4318; 
a3 = 0.0203; 
d3 = 0.15; 
d4 = 0.4318; 
L(1) = Link([0 0 0 0 ]); 
L(2) = Link([0 0 0 -90 ]); 
L(3) = Link([0 d3 a2 0 ]); 
L(4) = Link([0 d4 a3 -90 ]);
L(5) = Link([0 0 0 90 ]); 
L(6) = Link([0 0 0 -90 ]); 
PUMA = SerialLink(L); 
PUMA.plot([pi/2 pi/3 pi/4 pi/2 pi/3 pi/4]); 
T = fkine(PUMA, ([pi/6 pi/8 pi/6 pi/6 pi/4 pi/6]))
Q = PUMA.ikine(T, '[0 0 0 0 0 0]' , 'mask', [1 1 1 1 1 1])