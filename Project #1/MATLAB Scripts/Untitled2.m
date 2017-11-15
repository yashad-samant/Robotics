s=2;
t=1;
for s=2:1:r
    pos(1,s-1) = input(s,4);
end 
s=1;
for s=1:3:r-1
    pos_x(1,t) = pos(1,s);
    t=t+1;
end
s=1;
t=1;
for s=2:3:r-1
    pos_y(1,t) = pos(1,s);
    t=t+1;
end
s=1;
t=1;
for s=3:3:r-1
    pos_z(1,t) = pos(1,s);
    t=t+1;
end
vel_x = zeros(1,67);
vel_y = zeros(1,67);
vel_z = zeros(1,67);

u1=1;
u2=0;
u = 1;
t=1;
[m,n] = size(pos_x);
for u1 = 1:1:m
    a0 = pos_x(1,u1);
    b0 = pos_y(1,u1);
    c0 = pos_z(1,u1);
    a1 = vel_x(1,u1);
    b1 = vel_y(1,u1);
    c1 = vel_z(1,u1);
    a2 = pos_x(1,u1+1)-a1-a0;
    b2 = pos_y(1,u1+1)-b1-b0;
    c2 = pos_z(1,u1+1)-c1-c0;
    
    for u2 = 0:1/16.75:1 
        xp = a2.*(u2^2)+a1.*(u2)+a0;
        xv = 2*a2.*u2+a1;    
        yp = b2.*(u^2)+b1.*(u)+b0;
        yv = 2*b2.*u+b1; 
        zp = c2.*(u^2)+c1.*(u)+b0;
        zv = 2*c2.*u+c1; 
        t=t+1;
    end
end
