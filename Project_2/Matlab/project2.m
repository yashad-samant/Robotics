%%
clc;
%input initial position and desired trajectory of robot
arm = dlmread('C:\Users\Yashad\Desktop\Books\Robotics\Project_2\arm');
traj = dlmread('C:\Users\Yashad\Desktop\Books\Robotics\Project_2\trajectory');
%%
%Initialisation
u = 0;
v = 0;
lambda = arm(1,2);
n = arm(1,1);
m = traj(1,1);
del_X = [0; 0];
for i = 1:1:n
    theta(i,1) = arm(i+1,2);
end
del_theta = zeros(n, 1);
final_theta = zeros(n,m);
%%
%desired trajectory
for i = 2:1:m+1
    hold on;
    x(:,i-1) = traj(i,1);
    y(:,i-1) = traj(i,2);
end
plot (y,x);
%%
%MAIN
for u = 1:1:m
    for v = 1:1:1000
%Forward Kinematics
        i = 1;
        j = 1;
        sum_theta = 0;
        sumx=0;
        sumy=0;
        theta = theta + del_theta;
        final_theta(:,u) = theta;
        for i = 1:1:n
            sum_theta = sum_theta + theta(i,1);
            sumx = sumx + arm(i+1,1)*cos(sum_theta);
            sumy = sumy + arm(i+1,1)*sin(sum_theta);
            x0(1,i) = sumx;
            y0(1,i) = sumy;
        end
        ex = x(1,u) - x0(1,i);
        ey = y(1,u) - y0(1,i);
        del_X = [ex; ey];
        x0_new = x0(1,i) - x0(1,i-1)
        y0_new = y0(1,i) - y0(1,i-1) 
%Inverse Kinematics
        
%Calculating Jacobian matrix
        i = 1;
        a = [0; 0; 1];
        J = zeros(3,n);
       
        for i = 1:1:n
            %sum = sum + arm(i,1)
            p = [x0_new; y0_new; 0];
            J(:,i) = cross(a,p);
        end
        
%Calculating DLS
        JT = transpose(J);
        DLS = inv(JT*J + (lambda^2)*eye(n))*JT;
        DLS = DLS(:,1:2);
        del_theta = DLS*del_X  
        if norm(del_theta) < 1e-14
             break;
        end
    end
end
%%
final_theta = transpose(final_theta);
dlmwrite('C:\Users\Yashad\Desktop\Books\Robotics\Project_2\angles',final_theta,'delimiter',' ')

%%
i = 1;
j = 1;
for j = 1:1:m
    sumx = 0;
    sumy = 0;
    sum = 0;
    for i = 1:1:n
        sum = sum + final_theta(j,i);
        sumx = sumx + arm(i+1,1)*cos(sum);
        sumy = sumy + arm(i+1,1)*sin(sum);
        xa(:,j) = sumx;
        ya(:,j) = sumy;
    end
end
plot(ya,xa);
%%