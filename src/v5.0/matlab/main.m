X11=load('data\data11.txt');
X12=load('data\data12.txt');
knots11=[0 0 0 1/5 2/5 3/5 4/5 1 1 1];
knots113=[0 1/15 2/15 1/5 4/15 5/15 2/5 7/15 8/15 3/5 10/15 11/15 4/5 13/15 14/15 1];
knots12=[0 0 0 1/5 2/5 3/5 4/5 1 1 1];
knots123=[1/15 2/15 1/5 4/15 5/15 2/5 7/15 8/15 3/5 10/15 11/15 4/5 13/15 14/15 1];

figure(1)
[p11,p12,p1]=curves(X11,X12,knots11,knots12,knots113,knots123);
figure(2);
d1=init(p1);

X21=load('data\data21.txt');
X22=load('data\data22.txt');
knots21=[0 0 0 1/6 1/3 1/2 2/3 5/6 1 1 1];
knots22=[0 0 0 0 1/4 2/4 3/4 1 1 1 1];
knots213=[0 1/18 1/9 1/6 2/9 5/18 1/3 7/18 4/9 1/2 5/9 11/18 2/3 13/18 7/9 5/6 8/9 17/18 1];
knots224=[1/16 1/8 3/16 1/4 5/16 3/8 7/16 1/2 9/16 5/8 11/16 3/4 13/16 7/8 1];

figure(3)
[p21,p22,p2]=curves(X21,X22,knots21,knots22,knots213,knots224);
figure(4);
d2=init(p2);