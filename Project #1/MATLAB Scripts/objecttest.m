clc
clear all;

input=dlmread('object.key');
kf = input(1,1);                 
tf = input(1,2);
[r,c] = size(input);
x=zeros(1,4);
y=zeros(kf,4);
i=1;
for u=2:3:r-3              
    R = [input(u,1) input(u,2) input(u,3);input(u+1,1) input(u+1,2) input(u+1,3);input(u+2,1) input(u+2,2) input(u+2,3)];
    x=R_to_Q(R);
    y(i,:)=x;
    i=i+1;
end
kq=y;
x0=Q_interpolation(kq,kf,tf);
h=1;
z=0;
for g=0:1:tf;    
    R2=x0(h,:);
    k=Q_to_R(R2);
    x(1+z:3+z,:)=k;
    h=h+1;
    z=z+3;
end


clc;
