function y=system5(x)
% System	y[n]=?

y1=systemA(x);
y2=systemB(y1);
y3=systemC(x);
y=y2+y3;
