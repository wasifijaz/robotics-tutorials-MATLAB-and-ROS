for z = 0:1:360
    x1 = [0, (4*cosd(z))]; 
    y1 = [0, (4*sind(z))]; 
    x2 = [(4*cosd(z)) , (4*cosd(z)) + (3*cosd(z))];
    y2 = [(4*sind(z)) , (4*sind(z)) + (3*sind(z))]; 
    hold on 
    plot(x1,y1,'r.-') 
end 
grid on 
title('Lab-01, 2-DOF Manipulator') 
legend('show','link1','link2') 