function [p1,p2]=curves(X1,X2,knots1,knots2,knots1s,knots2s)
x1=X1(1,:);x2=X2(1,:);
y1=X1(2,:);y2=X2(2,:);
hold on
l1=plot(x1,y1,'r-o');
l2=plot(x2,y2,'m-o');
sp1=spmak(knots1,X1);
sp2=spmak(knots2,X2);
fnplt(sp1,knots1,'b');fnplt(sp2,knots2,'k');
p1=fnval(sp1,knots1s);
p2=fnval(sp2,knots2s);
l3=plot(p1(1,:),p1(2,:),'*g');
l4=plot(p2(1,:),p2(2,:),'*y');
legend([l1,l2,l3,l4],'Location','NorthWest','control polygon of curve 1','control polygon of curve 2','sampling points of curve 1','sampling points of curve 2');
end