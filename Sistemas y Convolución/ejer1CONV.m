#Ejercicio 1 - CONVOLUCION
clc;
clear all;
#La idea es hacer una implementacion "mia" de la convolucion
#PARAMETROS INICIALES
#n para visualizar
n=5;

#Delta de dirac, para probar respuesta al impulso
x=rand(1,n);
h=rand(1,n); #hacemos dos señales del mismo tamaño, tambien pueden variar
#exponencial decadente, similar a la de la teoria
n=1:length(x);
#Graficos
figure(1)
subplot(2,1,1)
stem(n,x,'filled')
title('x[n] - Funcion aleatoria');
grid on
subplot(2,1,2)
n=1:length(h);
stem(n,h,'filled')
title("h[n] - Respuesta al impulso");
grid on

#Funcion mi conv
ymc = miconv(x, h);
yc=conv(x,h);
n_conv = ((-length(ymc)+1)/2):1:(length(ymc)/2);   %

#FUNCION FILTER
#Para que filter me de la convolucion, A tiene que ser el delta de dirac.
#y ademas, debo agregarle a x un par de 0
A=zeros(1,length(n_conv));
A(1)=1;

yf=filter(h,A,x);

figure(2)
subplot(3,1,1);
stem(n_conv, ymc, 'filled')
title('Funcion de convolucion(propia');
grid on
subplot(3,1,2);
stem(n_conv, yc, 'filled')
title('conv nativo de octave');
grid on
subplot(3,1,3);
stem(n_conv, yf, 'filled')
title('funcion filter de octave');
grid on
