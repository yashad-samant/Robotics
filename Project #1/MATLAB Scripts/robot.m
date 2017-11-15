clc;
clear all;

x=zeros(44,6);
i=1;
for u=0:0.1:1
    P1=1.562;
    P2=1.065;
    D1=-0.5;
    D2=0.5;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,1) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=1.065;
    P2=1.578;
    D1=0.5;
    D2=0.5;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,1) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=1.578;
    P2=2.003;
    D1=0.5;
    D2=-0.5;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,1) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=2.003;
    P2=1.562;
    D1=-0.5;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,1) = y;
    i=i+1;
end
    i=1;
for u=0:0.1:1
    P1=-1.249;
    P2=-1.633;
    D1=-0.4;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,2) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=-1.633;
    P2=-1.642;
    D1=0.0;
    D2=0.3;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,2) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=-1.642;
    P2=-1.324;
    D1=-0.3;
    D2=0.1;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,2) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=-1.324;
    P2=-1.249;
    D1=-0.1;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,2) = y;
    i=i+1;
end
    i=1;
for u=0:0.1:1
    P1=3.787;
    P2=3.636;
    D1=-0.1;
    D2=-0.5;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,3) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=3.636;
    P2=3.181;
    D1=-0.5;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,3) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=3.181;
    P2=3.312;
    D1=0.0;
    D2=0.4;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,3) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=3.312;
    P2=3.787;
    D1=0.4;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,3) = y;
    i=i+1;
end    
    i=1;
for u=0:0.1:1
    P1=-0.009;
    P2=-0.922;
    D1=-0.9;
    D2=-2.5;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,4) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=-0.922;
    P2=-3.411;
    D1=-2.5;
    D2=-2.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,4) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=-3.411;
    P2=-5.432;
    D1=-2.0;
    D2=5.4;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,4) = y;
    i=i+1;
end
for u=0:0.1:1
    P1=-5.432;
    P2=-0.009;
    D1=5.4;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,4) = y;
    i=i+1;
end   
    i=1;
for u=0:0.1:1
    P1=-0.966;
    P2=-0.651;
    D1=0.3;
    D2=0.6;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,5) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=-0.651;
    P2=-0.031;
    D1=0.6;
    D2=-0.5;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,5) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=-0.031;
    P2=-0.592;
    D1=-0.5;
    D2=0.4;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,5) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=-0.592;
    P2=-0.966;
    D1=0.4;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,5) = y;
    i=i+1;
end   
    i=1;
for u=0:0.1:1
    P1=0.004;
    P2=0.809;
    D1=0.8;
    D2=2.6;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,6) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=0.809;
    P2=3.410;
    D1=2.6;
    D2=2.1;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,6) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=3.410;
    P2=5.524;
    D1=2.1;
    D2=-5.5;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,6) = y;
    i=i+1;
end   
for u=0:0.1:1
    P1=5.524;
    P2=0.004;
    D1=-5.5;
    D2=0.0;
    h1=2*(u.^3)-3*(u.^2)+1;
    h2=(-2*(u.^3)+3*(u.^2));
    h3=(u.^3)-2*(u.^2)+u;
    h4=(u.^3)-(u.^2);
    y = P1*h1+P2*h2+D1*h3+D2*h4;  
    x(i,6) = y;
    i=i+1;
end   