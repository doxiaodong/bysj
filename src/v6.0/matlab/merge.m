function []=merge(mX,mknots)
x=mX(:,1);
y=mX(:,2);
hold on
plot(x,y,'r-o');
legend('Location','NorthWest','control polygon of curve');
sp=spmak(mknots,mX');
fnplt(sp,mknots,'b');
end