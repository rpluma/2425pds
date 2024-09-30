%Combinación de sistemas

% Inicio de figuras y memoria
close all;
% Ejes de tiempos discreto
n=-10:10;

figure;
x=pulsow(n,4);
y=system5(x);
subplot(211)
stem(n,x,'b','linewidth',2);  xlabel('tiempo discreto, n'); ylabel(' x[n] ');
axis([-10 10 -1.5 1.5]);grid
subplot(212)
stem(n,y,'r','linewidth',2);  xlabel('tiempo discreto, n'); ylabel(' y[n] ');
axis([-10 10 -4.5 4.5]);grid

