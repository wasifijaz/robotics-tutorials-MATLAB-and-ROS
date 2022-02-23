clear all 
clc 			 
L1 = 4;
L2 = 3; 
L3 = 2; 
L(1) = Link([0 0 L1 0]); 
L(2) = Link([0 0 L2 0]);	 
L(3) = Link([0 0 L3 0]); 
Abc = SerialLink(L); 
Abc.plot([0 0 0 ]) 
T = fkine([Abc],[0,0,0])