clc 
p = [1.5; 2; 0]; 
r = rotz(30); 
T = [r p];
i = [0 0 0]; 
T = [r p ; i 1]
trplot(T,'3') 