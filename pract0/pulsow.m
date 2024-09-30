function y=pulsow(n,w)
% Señal pulso. Se genera un pulso desde n=0 hasta n=w-1;

% Cálculo de la señal de salida
y=escalon(n)-escalon(n-w);
