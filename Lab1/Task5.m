v = [3;0]; 
a = 0; 
p = 3; 
q = 0; 
while p<= 200 
    r = [cos(a) -sind(a) ; sind(a) cosd(a)]; 
    n = r * v; 
    a = a+5; 
    k = n(1,1); 
    kk = k +5; 
    kkk = kk * cosd(q); 
    x = [k kkk]; 
    b = n(2,1); 
    bb = k+5; 
    bbb = bb * sind(q); 
    y = [b bbb]; 
    hold on 
    p = p+2; 
    plotv(n) 
    axis([-10 10 -10 10]) 
    plot(x,y,'r.-') 
    pause(0.1) 
    plot(0,0) 
    a = a+5; 
    p = p+2; 
    q = q+5; 
end