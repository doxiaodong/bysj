clc;clear;
%%%%双3次B样条曲面
x=[1,1,2,1;3,5,4,6;6,8,7,8;8,9,10,9;];
y=[1,3,6,8;1,2,5,8;0,3,9,9;1,4,7,10;];
z=[3,7,5,2;4,6,6,4;3,7,6,6;2,7,5,4];%控制顶点
i=0;
xx=zeros();
yy=zeros();
zz=zeros();
for u=0:0.01:1
    for v=0:0.01:1 
        i=i+1;
        %%%%%P(u,v)=U*array*P*array'*V'
        U=[u.^3 u.^2 u 1];
        V=[v.^3 v.^2 v 1];
        array=1/6*[-1 3 -3 1
            3 -6 3 0
            -3 0 3 0
            1 4 1 0];
        A=U*array;
        B=array'*V';
        xx(i)=A*x*B;
        yy(i)=A*y*B;
        zz(i)=A*z*B;
    end
end
mesh(x,y,z);
title('双3次B样条曲面');
hidden;
hold on;
plot3(xx,yy,zz);