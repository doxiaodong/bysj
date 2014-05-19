X1=load('data\data1.txt');
X2=load('data\data2.txt');
X=[X1 X2];

figure(1)
hold on
init(X1');
init(X2');

figure(2)
init(X');