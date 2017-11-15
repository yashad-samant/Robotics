clc;

y = [1.0  0.0   0.0    0.456
     0.0  1.0   0.0    0.725
     0.0  0.0   1.0   -0.150
     1.0  0.0   0.0    0.456
     0.0  1.0   0.0    0.925
     0.0  0.0   1.0    0.050
     1.0  0.0   0.0    0.456
     0.0  1.0   0.0    1.125
     0.0  0.0   1.0   -0.150
     1.0  0.0   0.0    0.456
     0.0  0.707 0.707  1.025
     0.0 -0.707 0.707 -0.350
     0.0  0.0   1.0    0.456
     0.0  1.0   0.0    0.925
    -1.0  0.0   0.0   -0.550];
a=zeros(1,4);
b=zeros(5,4);
d=0;
i=1;
for c=0:3:12;
    R = [y(1+c,1) y(1+c,2) y(1+c,3);y(2+c,1) y(2+c,2) y(2+c,3);y(3+c,1) y(3+c,2) y(3+c,3)];
    a=R_to_Q(R);
    b(i,:)=a;
    i=i+1;
end
key_q=b; 
key_frames=5;
total_frames=67;
e=Q_interpolation(key_q,key_frames,total_frames);
g=1;
h=1;
l=zeros(201,3);
m=0;
n=0;
for g=1:1:67;
    R2=e(h,:);
    k=Q_to_R(R2);
    l(1+m:3+n,:)=k;
    h=h+1;
    n=n+3;
    m=m+3;
end

clc;
i = 1;
for u = 0:(1/16):1
    x1 = 0.456;
    y1 = (0.2*(u^2)+0.725);
    z1 = (0.2*(u^2)-0.150);
    l(i,4) = x1;
    i = i+1;
    l(i,4) = y1;
    i = i+1;
    l(i,4) = z1;
    i = i+1;
end
for u = 0:(1/16):1
    x1 = 0.456;
    y1 = (-0.2*(u^2)+(0.4*u)+0.925);
    z1 = (-0.6*(u^2)+(0.4*u)+0.050);
    l(i,4) = x1;
    i = i+1;
    l(i,4) = y1;
    i = i+1;
    l(i,4) = z1;
    i = i+1;
end
for u = 0:(1/16):1
    x1 = 0.456;
    y1 = (-0.1*(u^2)+1.125);
    z1 = (0.6*(u^2)-(0.800*u)-0.150);
    l(i,4) = x1;
    i = i+1;
    l(i,4) = y1;
    i = i+1;
    l(i,4) = z1;
    i = i+1;
end
for u = 0:(1/16):1
    x1 = 0.456;
    y1 = (0.1*(u^2)-(0.200*u)+1.025);
    z1 = (-0.6*(u^2)+(0.4*u)-0.350);
    l(i,4) = x1;
    i = i+1;
    l(i,4) = y1;
    i = i+1;
    l(i,4) = z1;
    i = i+1;
end