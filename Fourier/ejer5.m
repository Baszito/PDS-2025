#Ejercicio 5
clc;
cla;
clear all;
fs=27;
tf=1;
fm=50;
#Notese que fm<2*fs;
T=1/fm;
t=0:T:tf-T;

x=1*sin(2*pi*27*t);
figure;
subplot(2,1,1);
stem(t,x);
title('Senoidal original');
grid on;
xf=fft(x);
f=0:1:fm-1;
subplot(2,1,2);
stem(f,abs(xf));
title('Espectro de magnitud');
grid on;

#1) A partir de la señal, se ve que la frecuencia es de 23hz.
#La discrepancia es por el efecto del aliasing.
#2) La formula es :
k=round(fs/fm)
abs(fs-((k*fm)))
#3) La relacion es :
#La magnitud maxima en el espectro es A*(fm/2)

