clc;clear;
%%%%2和3次B样�?�曲线
A=[0 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100
    25 20 16 23 24 23 26 25 23 22 30 22 15 27 26 28 26 25 28 29]; % 控制顶点
A1=A(:,1:10);
A2=A(:,11:20);
l=length(A);
l1=length(A1);
l2=length(A2);
% figure(1);%%%3次曲线
% plot(A(1,:),A(2,:),'r-o');
% title('3次B样�?�曲线');
% hold on;
% for i=1:l-3
%     for t=0:0.01:1
%         array3=[1 4 1 0
%             -3 0 3 0
%             3 -6 3 0
%             -1 3 -3 1];
%         vector3=1/6*[1 t t.^2 t.^3];
%         B3=vector3*array3;
%         x3=B3(1).*A(1,i)+B3(2).*A(1,i+1)+B3(3).*A(1,i+2)+B3(4).*A(1,i+3);%%%%%%%%%%%%%四顶点
%         y3=B3(1).*A(2,i)+B3(2).*A(2,i+1)+B3(3).*A(2,i+2)+B3(4).*A(2,i+3);
%         line(x3,y3);
%     end
% end
% hold off;
PY = zeros(1,1000);
m=1;
m1=1;
m2=1;
px=0:0.0055501:100;
px1=0:0.006244:50;
px2=50:0.006244:100;
figure(2); %%%2次曲线
%%title('2次B样�?�曲线');
% plot(A(1,:),A(2,:),'r-o')
hold on;
for i=1:l-2
    for t=0:0.001:1
        array2=[1 1 0
            -2 2 0
            1 -2 1];
        vector2=1/2*[1 t t.^2];
        B2=vector2*array2;
        x2=B2(1).*A(1,i)+B2(2).*A(1,i+1)+B2(3).*A(1,i+2);%%%%%%%%%%%%%三顶点
        y2=B2(1).*A(2,i)+B2(2).*A(2,i+1)+B2(3).*A(2,i+2);
%         line(x2,y2);
        PY(m)=y2;
        m=m+1;
    end
end
plot(px,PY);%%
% length(PY)
% length(px)

figure(3); %%%2次曲线
%%title('2次B样�?�曲线');
% plot(A1(1,:),A1(2,:),'r-o');
hold on;
for i=1:l1-2
    for t=0:0.001:1
        array21=[1 1 0
            -2 2 0
            1 -2 1];
        vector21=1/2*[1 t t.^2];
        B21=vector21*array21;
        x21=B21(1).*A1(1,i)+B21(2).*A1(1,i+1)+B21(3).*A1(1,i+2);%%%%%%%%%%%%%三顶点
        y21=B21(1).*A1(2,i)+B21(2).*A1(2,i+1)+B21(3).*A1(2,i+2);
%         line(x21,y21);
        PY1(m1)=y21;
        m1=m1+1;
    end
end
plot(px1, PY1);
% length(PY1)
% length(px1)
% plot(A2(1,:),A2(2,:),'r-o');
hold on;
for i=1:l2-2
    for t=0:0.001:1
        array22=[1 1 0
            -2 2 0
            1 -2 1];
        vector22=1/2*[1 t t.^2];
        B22=vector22*array22;
        x22=B22(1).*A2(1,i)+B22(2).*A2(1,i+1)+B22(3).*A2(1,i+2);%%%%%%%%%%%%%三顶点
        y22=B22(1).*A2(2,i)+B22(2).*A2(2,i+1)+B22(3).*A2(2,i+2);
%         line(x22,y22);
        PY2(m2)=y22;
        m2=m2+1;
    end
end
plot(px2, PY2);
% length(PY2)
% length(px2)