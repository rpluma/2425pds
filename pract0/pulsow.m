function y=pulsow(n,w)
% Se�al pulso. Se genera un pulso desde n=0 hasta n=w-1;

% C�lculo de la se�al de salida
y=escalon(n)-escalon(n-w);
