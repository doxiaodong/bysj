X1=load('data\data1.txt');
X2=load('data\data2.txt');
knots1=[0 0 0 1/5 2/5 3/5 4/5 1 1 1];
knots13=[0 1/15 2/15 1/5 4/15 5/15 2/5 7/15 8/15 3/5 10/15 11/15 4/5 13/15 14/15 1];
knots2=[0 0 0 1/5 2/5 3/5 4/5 1 1 1];
knots23=[1/15 2/15 1/5 4/15 5/15 2/5 7/15 8/15 3/5 10/15 11/15 4/5 13/15 14/15 1];
x1=X1(1,:);x2=X2(1,:);
y1=X1(2,:);y2=X2(2,:);
figure(1)
l1 = plot(x1,y1,'r-o');
hold on;
l2 = plot(x2,y2,'m-o');%??????
hold on;
sp1=spmak(knots1,X1);
sp2=spmak(knots2,X2);%??B????
fnplt(sp1,[knots1(1),knots1(10)],'b');fnplt(sp2,[knots2(1),knots2(10)],'k');%?????????????
%fnplt(sp,'b*');
hold on;
p1=fnval(sp1,knots13);
p2=fnval(sp2,knots23);%?????????????
l3 = plot(p1(1,:),p1(2,:),'*g');
l4 = plot(p2(1,:),p2(2,:),'*y');
legend([l1,l2,l3,l4],'Location','NorthWest','control polygon of curve 1','control polygon of curve 2','sampling points of curve 1','sampling points of curve 2');
figure(2)
p=[p1 p2];
d1=init(p');