function y=system1(x)
% System y[n]=n·x[n]

% Salida / Output signal
n=((-length(x)+1):2:length(x))/2;
y=n.*x;

