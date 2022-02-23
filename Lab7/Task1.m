clc
clear all
L(1) = Link([0 0 0 -pi/2]);
L(2) = Link([0 0 50 0]);
L(3) = Link([0 0 25 0]);
L(4) = Link([0 0 25 0]);
Finger1 = SerialLink(L);
Finger1.name = 'Finger1';
Finger1.base = trotz(0*pi) * transl(0,0,0)
Finger2 = SerialLink(L);
Finger2.name = 'Finger2';
Finger2.base = trotz(pi/2) * transl(20,10,0)
Finger3 = SerialLink(L);
Finger3.name = 'Finger3';
Finger3.base = trotz(pi/2) * transl(20,0,0)
Finger4 = SerialLink(L); 
Finger4.name = 'Finger4'; 
Finger4.base = trotz(pi/2) * transl(20,-10,0)
Finger1.plot([0 -pi/4 -pi/4 -pi/4]); 
hold on 
Finger2.plot([0 -pi/4 -pi/4 -pi/4]); 
hold on
Finger3.plot([0 -pi/4 -pi/4 -pi/4]); 
hold on
Finger4.plot([0 -pi/4 -pi/4 -pi/4]); 
hold on