x1 = [0, (4*cosd(45))];
y1 = [0, (4*sind(45))];
x2 =[(4*cosd(45)) , (4*cosd(45)) + (3*cosd(60))];
y2 = [(4*sind(45)) , (4*sind(45)) + (3*sind(60))];
plot(x1,y1,'r.-') 
hold on 
plot(x2,y2,'b.-') 
hold off 
grid on 
title('Lab 01, 2 - DOF Manipulator') 
legend('show','Link-1','Link-2') 