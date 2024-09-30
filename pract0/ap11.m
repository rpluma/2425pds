%ap11	Representación gráfica de señales en tiempo discreto

% Inicio de figuras y memoria
close all;clear;
% Eje de tiempos discreto
n=-10:10;

% Delta discreta
x1=delta(n);	
figure;stem(n,x1,'b','linewidth',2);xlabel('tiempo discreto, n'); ylabel('x1[n]');axis([-10 10 -1.2 1.2]);grid

% Señal escalón unitario u(n)
x2=escalon(n);	
figure;stem(n,x2,'b','linewidth',2);xlabel('tiempo discreto, n'); ylabel('x2[n]');axis([-10 10 -1.2 1.2]);grid

% Señal tipo pulso anchura w muestras (w>0)
w=4;
x3=pulsow(n,w);	
figure;stem(n,x3,'b','linewidth',2);xlabel('tiempo discreto, n'); ylabel('x3[n]'); axis([-10 10 -1.2 1.2]);grid

% Ejemplo de señal sinusoidal discreta
x4=sin(pi*n/5-pi/3);	
figure;stem(n,x4,'b','linewidth',2);xlabel('tiempo discreto, n'); ylabel('x4[n]'); axis([-10 10 -1.2 1.2]);grid

% Señal tipo exponencial
a=1/2;
x5=a.^n;	
figure;stem(n,x5,'b','linewidth',2);xlabel('tiempo discreto, n'); ylabel('x5[n]'); axis([-10 10 -1.2 2^10]);grid