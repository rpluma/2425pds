%Invarianza. Respuesta del sistema system1 a dos entradas 

% Inicio de figuras y memoria
close all;clear;
% Eje de tiempo discreto
n=-10:10;

figure(1);
% Señal de entrada
x1=delta(n)+delta(n-1)+delta(n-2);
subplot(211);	% subfigura superior de la figura 1
stem(n,x1,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' x1[n] ');
axis([-10 10 -1.5 1.5]);grid
% Señal de salida
y1=system1(x1);
subplot(212);	% subfigura inferior de la figura 1
stem(n,y1,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y1[n] ');
axis([-10 10 -0.5 25]);grid

figure(2);
% Señal de entrada desplazada 5 muestras
x2=delta(n-5)+delta(n-6)+delta(n-7);
subplot(211);	% subfigura superior de la figura 2
stem(n,x2,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' x2[n] ');
axis([-10 10 -1.5 1.5]);grid
% Respuesta a la entrada desplazada
y2=system1(x2);
subplot(212);	% subfigura inferior de la figura 2
stem(n,y2,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y2[n] ');
axis([-10 10 -0.5 25]);grid
