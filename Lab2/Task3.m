clear all 
clc 
p = [2;2;2]; 
i = [0 0 0]; 
axis([0, 5, 0, 5]) 
r = rotx(30);
T = [r p; i 1]; 
trplot(T,'3d') 
figure 
r = roty(30); 
T = [r p; i 1]; 
trplot(T,'3d') 
figure 
r = rotz(30); 
T = [r p; i 1]; 
trplot(T,'3d') 
figure 