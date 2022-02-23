l1 = 0.275;     
l2 = 0.25; 
L(1) = Link([0 0 0 -pi/2 ]); 
L(2) = Link([0 0 0 -pi/2 ]); 
L(3) = Link([0 0 l1 0 ]); 
L(4) = Link([0 0 l2 0 ]); 
L(5) = Link([0 0 0 pi/2 ]); 
L(6) = Link([0 0 0 -pi/2 ]); 
L(7) = Link([0 0 0 0]); 
RRR = SerialLink(L); 
T = fkine(RRR,[0 0 0 0 0 0 0]) 
Arm1 = SerialLink(L); 
Arm1.name = 'arm1'; 
Arm1.base = trotz(0) * transl(0.06,0,0); 
Arm2 = SerialLink(L); 
Arm2.name = 'arm2'; 
Arm2.base = trotz(0) * transl(-0.06,0,0); 
l1 = 0.45;        
l2 = 0.475; 
left_leg = SerialLink(L); 
left_leg.name = 'leftleg'; 
left_leg.base = trotz(0) * transl(-0.06,0,-0.5); 
right_leg = SerialLink(L); 
right_leg.name = 'rightleg'; 
right_leg.base = trotz(0) * transl(0.06,0,-0.5); 
Arm1.plot([pi 0 0 pi/6 0 0 0]); 
hold on  
Arm2.plot([0 0 0 -pi/6 0 0 0]); 
hold on 
left_leg.plot([0 -pi/2 -pi/2 pi/2 -pi/2 -pi/2 0]); 
hold on 
right_leg.plot([0 -pi/2 -pi/2 pi/2 -pi/2 -pi/2 0]); 
hold off 