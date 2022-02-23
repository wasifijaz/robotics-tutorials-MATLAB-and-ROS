v = [3;0]; 
a = 0; 
p = 0; 
q = 0;

while p<= 200 
    r = [10 -sind(a) ; sind(a) cosd(a)]; 
    n = r * v; 
    plotv(n) 
    hold on 
    k = n(1,1); 
    kk = k +5; 
    kk = kk * cosd(q); 
    x = [k kk]; 
    b = n(2,1); 
    bb = k+5; 
    bb = bb * sind(q); 
    y = [b bb]; 
    plot(x,y,'r.-') 
    axis([-100 100 -100 100]) 
    q = q+5; 
    a = a+5; 
    p = p+1; 
    pause(0.01) 
    clf 
end 