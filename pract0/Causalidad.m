% Causalidad. Respuesta de los sistemas system3 y system4 a diferentes entradas 

% Inicio de figuras y memoria
close all;clear;
% Eje de tiempo discreto
n=-10:10;

figure(1);
% Señal de entrada x1
x1=delta(n)+2*delta(n-2);
subplot(211);	% subfigura superior de la figura 1
stem(n,x1,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' x1[n] ');
axis([-10 10 -1.5 2.5]);grid
% Señal de salida y1
y1=system3(x1);
subplot(212);	% subfigura inferior de la figura 1
stem(n,y1,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y1[n] ');
axis([-10 10 -2.5 5]);grid

figure(2);
% Señal de entrada x1
x1=delta(n)+2*delta(n-2);
subplot(211);	% subfigura superior de la figura 2
stem(n,x1,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' x2[n] ');
axis([-10 10 -1.5 2.5]);grid
% Señal de salida y2
y2=system4(x1);
subplot(212);	% subfigura inferior de la figura 2
stem(n,y2,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y2[n] ');
axis([-10 10 -2.5 5]);grid

