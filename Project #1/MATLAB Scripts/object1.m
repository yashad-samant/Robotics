clc
clear all;

input=dlmread('object.key');
key_frames = input(1,1);                 
total_frames = input(1,2);
[r,c] = size(input);
a=zeros(1,4);
b=zeros(key_frames,4);
i=1;
o = (key_frames-1)/total_frames
for d=2:3:r-3              %%Form Rotation matrices from the input file and convert rotation to quaternion
    R = [input(d,1) input(d,2) input(d,3);input(d+1,1) input(d+1,2) input(d+1,3);input(d+2,1) input(d+2,2) input(d+2,3)];
    a=R_to_Q(R);
    b(i,:)=a;
    i=i+1;
end
key_q=b;                   %%Form a single matrix of quaternion values and perform quaternion interpolation
x0=Q_interpolation(key_q,key_frames,total_frames);
h=1;
z=0;
for g=0:1:total_frames;    %%The interpolated values are assembled in matrix form and converted into a rotation matrix
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
[m,n] = size(pos_x)
% x_p();
% y_p();
% z_p();
for u1 = 1:1:m-2
    a0 = pos_x(1,u1);
    b0 = pos_y(1,u1);
    c0 = pos_z(1,u1);
    a1 = vel_x(1,u1);
    b1 = vel_y(1,u1);
    c1 = vel_z(1,u1);
    a2 = pos_x(1,u1+1)-a1-a0;
    b2 = pos_y(1,u1+1)-b1-b0;
    c2 = pos_z(1,u1+1)-c1-c0;

    for u2 = 0:o:1 
        x_p(1,t) = a2*(u2^2)+a1*(u2)+a0;
        x_v(1,t) = 2*a2*u2+a1; 
        
              
        y_p(1,t) = b2*(u^2)+b1*(u)+b0;
        yv(1,t) = 2*b2*u+b1; 
        
        z_p(1,t) = c2*(u^2)+c1*(u)+b0;
        zv(1,t) = 2*c2*u+c1; 
        t=t+1;
    end
end



