function []=init(X)
n=length(X);
A=zeros(n+2);
A(1,1)=1;
A(1,2)=-2;
A(1,3)=1;
A(n+2,n)=1;
A(n+2,n+1)=-2;
A(n+2,n+2)=1;
for i=2:(n+1)
    A(i,i-1)=1;
    A(i,i)=4;
    A(i,i+1)=1;
end
e=[0,0];
e(n+2,:)=[0,0];
for i=2:n+1
    e(i,:)=6*X(i-1,:);
end
d=inv(A)*e;
hold on
plot(X(:,1),X(:,2),'r.');
plot(d(:,1),d(:,2),'b');
t=(0:0.01:1);
x=0;
y=0;
for j=1:(n-1)
    for i=1:length(t)
        x(i)=d(j,1)*baseFun(0,t(i))+d(j+1,1)*baseFun(1,t(i))+d(j+2,1)*baseFun(2,t(i))+d(j+3,1)*baseFun(3,t(i)); 
        y(i)=d(j,2)*baseFun(0,t(i))+d(j+1,2)*baseFun(1,t(i))+d(j+2,2)*baseFun(2,t(i))+d(j+3,2)*baseFun(3,t(i));
    end
    plot(x,y,'g');
end
end