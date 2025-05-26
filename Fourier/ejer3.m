#Ejercicio 3
clc;
clear all;
#La idea es ver la propiedad de retardo temporal
#Que es :
#x[n-i] <-F-> X[k]e^((-j*2*pi*k*i)/N)
#Datos del problema :
fm=100;
T=1/fm;
t=0:T:1-T;
fs=10;

#Señal
s=sin(2*pi*fs*t);

#Grafica
figure;
stem(t,s);
title('Señal original');
grid on;

#Lado izquierdo de la ecuacion :
#Desplazo diez muestras
desplazamiento = 1;
#Transformada X[k];
sf=fft(s);
#Multiplico por la exp compleja
N=length(t);
k=0:N-1;
factor=exp((-2*pi*1i*k*desplazamiento)/N);
sf_desplazada=sf.*factor;
sf_desplazada_inversa=ifft(sf_desplazada);

figure;
stem(t,sf_desplazada_inversa);
title('Señal antitransformada');
grid on;
hold on;
s_desplazada=circshift(s,desplazamiento);
stem(t,s_desplazada);

