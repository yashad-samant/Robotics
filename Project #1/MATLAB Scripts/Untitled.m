clc
clear all;

object=dlmread('object.key');
kf = object(1,1);                 
tf = object(1,2);
[r,c] = size(object);
a=zeros(1,4);
b=zeros(kf,4);
i=1;
o = (kf-1)/tf
for d=2:3:r-3              %%Form Rotation matrices from the input file and convert rotation to quaternion
    R = [object(d,1) object(d,2) object(d,3);object(d+1,1) object(d+1,2) object(d+1,3);object(d+2,1) object(d+2,2) object(d+2,3)];
    a=R_to_Q(R);
    b(i,:)=a;
    i=i+1;
end
key_q=b;                   %%Form a single matrix of quaternion values and perform quaternion interpolation
x0=Q_interpolation(key_q,kf,tf);
h=1;
z=0;
for g=0:1:tf;    %%The interpolated values are assembled in matrix form and converted into a rotation matrix
    R2=x0(h,:);
    k=Q_to_R(R2);
    x(1+z:3+z,:)=k;
    h=h+1;
    z=z+3;
end

%%Catmull Rom interpolation for position
s=2;
t=1;
for s=2:1:r
    pos(1,s-1) = object(s,4);
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
vel_x = zeros(1,68);
vel_y = zeros(1,68);
vel_z = zeros(1,68);

u1=1;
u2=0;
u = 1;
t=1;
[m,n] = size(pos_x);
for u1 = 1:1:n-1
    a0 = pos_x(1,u1);
    b0 = pos_y(1,u1);
    c0 = pos_z(1,u1);
    a1 = vel_x(1,u1*17);
    b1 = vel_y(1,u1*17);
    c1 = vel_z(1,u1*17);
    a2 = pos_x(1,u1+1)-a1-a0;
    b2 = pos_y(1,u1+1)-b1-b0;
    c2 = pos_z(1,u1+1)-c1-c0;

    for u2 = 0:o:1 
        xp(1,t) = a2*(u2^2)+a1*(u2)+a0;
        vel_x(1,t) = 2*a2*u2+a1;
        yp(1,t) = b2*(u^2)+b1*(u)+b0;
        vel_y(1,t) = 2*b2*u+b1; 
        zp(1,t) = c2*(u^2)+c1*(u)+b0;
        vel_z(1,t) = 2*c2*u+c1; 
        t=t+1;
    end
end
pos_final = zeros(204,1)
t=1
for s=1:3:204
    pos_final(s,1) = xp(1,t);
    t=t+1;
end
t=1;
s=2;
for s=2:3:204
    pos_final(s,1) = yp(1,t);
    t=t+1;
end
t=1;
s=3;
for s=3:3:204
    pos_final(s,1) = zp(1,t);
    t=t+1;
end

final = [x,pos_final]
dlmwrite('C:\Users\Yashad\Desktop\Books\Robotics\Project #1\object\object.traj',tf,'-append','delimiter',' ')
dlmwrite('C:\Users\Yashad\Desktop\Books\Robotics\Project #1\object\object.traj',final,'-append','delimiter',' ')
    


