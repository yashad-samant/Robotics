clc;
clear all;
R1 = [1.0 0.0 0.0  0.456;  0.0 1.0   0.0    0.725;  0.0  0.0   1.0   -0.150];
R2 = [1.0 0.0 0.0  0.456;  0.0 1.0   0.0    0.925;  0.0  0.0   1.0    0.050];
R3 = [1.0 0.0 0.0  0.456;  0.0 1.0   0.0    1.125;  0.0  0.0   1.0   -0.150];
R4 = [1.0 0.0 0.0  0.456;  0.0 0.707 0.707  1.025;  0.0 -0.707 0.707 -0.350];
R5 = [0.0 0.0 1.0  0.456;  0.0 1.0   0.0    0.925; -1.0  0.0   0.0   -0.550];

q1 = R_to_Q(R1);
q2 = R_to_Q(R2);
q3 = R_to_Q(R3);
q4 = R_to_Q(R4);
q5 = R_to_Q(R5);

x=1;
y(x,:)=q1;
x=x+1;
y(x,:)=q2;
x=x+1;
y(x,:)=q3;
x=x+1;
y(x,:)=q4;
x=x+1;
y(x,:)=q5;

kq = y;
kf = 5;
tf = 67;
Interp = Q_interpolation(kq,kf,tf);
h=1;
l=zeros(201,3);
m=0;
n=0;
for g=1:1:67;
    R2=Interp(h,:);
    k=Q_to_R(R2);
    l(1+m:3+n,:)=k;
    h=h+1;
    n=n+3;
    m=m+3;
end

clc;
x = 1;
for u = 0:(1/16.25):1
    x1 = 0.456;
    y1 = (0.2*(u^2)+0.725);
    z1 = (0.2*(u^2)-0.150);
    l(x,4) = x1;
    x = x+1;
    l(x,4) = y1;
    x = x+1;
    l(x,4) = z1;
    x = x+1;
end
for u = 0:(1/16.25):1
    x1 = 0.456;
    y1 = (-0.2*(u^2)+(0.4*u)+0.925);
    z1 = (-0.6*(u^2)+(0.4*u)+0.050);
    l(x,4) = x1;
    x = x+1;
    l(x,4) = y1;
    x = x+1;
    l(x,4) = z1;
    x = x+1;
end
for u = 0:(1/16.25):1
    x1 = 0.456;
    y1 = (-0.1*(u^2)+1.125);
    z1 = (0.6*(u^2)-(0.800*u)-0.150);
    l(x,4) = x1;
    x = x+1;
    l(x,4) = y1;
    x = x+1;
    l(x,4) = z1;
    x = x+1;
end
for u = 0:(1/16.25):1
    x1 = 0.456;
    y1 = (0.1*(u^2)-(0.200*u)+1.025);
    z1 = (-0.6*(u^2)+(0.4*u)-0.350);
    l(x,4) = x1;
    x = x+1;
    l(x,4) = y1;
    x = x+1;
    l(x,4) = z1;
    x = x+1;
end
dlmwrite('C:\Users\Yashad\Desktop\Books\Robotics\Project #1\object\object.traj',tf,'-append','delimiter',' ')
dlmwrite('C:\Users\Yashad\Desktop\Books\Robotics\Project #1\object\object.traj',l,'-append','delimiter',' ')
    