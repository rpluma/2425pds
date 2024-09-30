function y=system4(x)
% System y[n]=2x[n-1]-x[n]

xaux=[0,x(1:end-1)];
% Salida/Output
y=2*xaux-x;

