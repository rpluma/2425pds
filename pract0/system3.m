function y=system3(x)
% System y[n]=2x[n]-x[n+1]

xaux=[x(2:end),0];
% Salida/Output
y=2*x-xaux;

