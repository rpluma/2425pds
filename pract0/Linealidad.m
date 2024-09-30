%Linealidad	Respuesta del sistema system1 a diferentes entradas 

% Inicio de figuras y memoria
close all;clear;
% Eje de tiempo discreto
n=-10:10;

figure(1);
% Señal de entrada x1
x1=2*delta(n)-delta(n-1)+2*delta(n-2);
subplot(211);	% subfigura superior de la figura 1
stem(n,x1,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' x1[n] ');
axis([-10 10 -1.5 2.5]);grid
% Señal de salida y1
y1=system1(x1);
subplot(212);	% subfigura inferior de la figura 1
stem(n,y1,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y1[n] ');
axis([-10 10 -2.5 5]);grid

figure(2);
% Señal de entrada x2
x2=delta(n-3)+2*delta(n-4)+delta(n-5);
subplot(211);	% subfigura superior de la figura 2
stem(n,x2,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' x2[n] ');
axis([-10 10 -1.5 2.5]);grid
% Señal de salida y2
y2=system1(x2);
subplot(212);	% subfigura inferior de la figura 2
stem(n,y2,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y2[n] ');
axis([-10 10 -0.5 10]);grid

figure(3);
% Señal de entrada x3 = combinacion lineal de x1 y x2
x3=3*x1-2*x2;
subplot(311);	% subfigura superior de la figura 3
stem(n,x3,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' x3[n] ');
axis([-10 10 -8 8]);grid
% Señal de salida a x3
y3a=system1(x3);
subplot(312);	% subfigura intermedia de la figura 3
stem(n,y3a,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y3a[n] ');
axis([-10 10 -18 18]);grid
% Señal combinación lineal de y1 e y2
y3b=3*y1-2*y2;
subplot(313);	% subfigura inferior de la figura 3
stem(n,y3b,'b','linewidth',2); xlabel('tiempo discreto, n'); ylabel(' y3b[n] ');
axis([-10 10 -18 18]);grid
