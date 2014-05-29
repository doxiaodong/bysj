X11=load('data\data11.txt');
X12=load('data\data12.txt');
knots11=[0 0 0 1/5 2/5 3/5 4/5 1 1 1];
knots113=[0 1/10 1/5 3/10 2/5 1/2 3/5 7/10 4/5 9/10 1];
knots12=[0 0 0 1/5 2/5 3/5 4/5 1 1 1];
knots123=[0 1/10 1/5 3/10 2/5 1/2 3/5 7/10 4/5 9/10 1];

figure(1)
[p11,p12]=curves(X11,X12,knots11,knots12,knots113,knots123);

X21=load('data\data21.txt');
X22=load('data\data22.txt');
knots21=[0 0 0 1/6 1/3 1/2 2/3 5/6 1 1 1];
knots22=[0 0 0 0 1/4 1/2 3/4 1 1 1 1];
knots213=[0 1/12 1/6 1/4 1/3 5/12 1/2 7/12 2/3 3/4 5/6 11/12 1];
knots224=[0 1/12 1/6 1/4 1/3 5/12 1/2 7/12 2/3 3/4 5/6 11/12 1];

figure(2)
[p21,p22]=curves(X21,X22,knots21,knots22,knots213,knots224);


%%%%%%merge1
%%%%%%10points
figure(5110)
mknots110=load('merge\mknots110.txt');
mX110=load('merge\mX110.txt');
merge(mX110,mknots110);
%%%%%%15points
figure(5115)
mknots115=load('merge\mknots115.txt');
mX115=load('merge\mX115.txt');
merge(mX115,mknots115);

%%%%%merge2
%%%%%%20points
figure(5220)
mknots220=load('merge\mknots220.txt');
mX220=load('merge\mX220.txt');
merge(mX220,mknots220);

