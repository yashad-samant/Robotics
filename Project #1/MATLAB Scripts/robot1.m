clc;
clear all;
robot = dlmread('robot.key');
[r,c] = size(robot);
kf = robot(1,1);
tf = robot(1,2);
a = 0;
b = tf/(kf-1);
u = 1;
v = 1;
d = 1;
t = zeros(tf,c);
for u = 1:1:c
     d = 1;
     w = 2;
     x = 3;
     y = 4;
     z = 5;
    for v = 1:1:(kf-1)
        for a = 0:(1/b):1
            p1 =  robot(w,u);
            p2 =  robot(y,u);
            d1 =  robot(x,u);
            d2 =  robot(z,u);
            h1=2*(a.^3)-3*(a.^2)+1;
            h2=(-2*(a.^3)+3*(a.^2));
            h3=(a.^3)-2*(a.^2)+a;
            h4=(a.^3)-(a.^2);
            s = p1*h1+p2*h2+d1*h3+d2*h4;
            t(d,u) = s;
            d = d+1;
        end
        w = w+2;
        x = x+2;
        y = y+2;
        z = z+2;
    end
   
end
dlmwrite('C:\Users\Yashad\Desktop\Books\Robotics\Project #1\robot\robot.ang',tf,'-append','delimiter',' ')
dlmwrite('C:\Users\Yashad\Desktop\Books\Robotics\Project #1\robot\robot.ang',t,'-append','delimiter',' ')
