#Ejericio 6
clear;
clc
fm_o=5;
fs=0.5;
tini=-2;
tfin=2;


[x,t]=sync(tini, tfin, fm_o, fs);
subplot(2,2,1)
stem(t,x)
title('Sync Original');
xlabel('Tiempo (s)');
ylabel('Valor de la señal');
grid on
hold on

##Interpolador con Escalon
fm_n=10;
[xe,te]=interpolador(fm_o,fm_n,x,t,fs,"esca");
subplot(2,2,2)
stem(te,xe)
title('Escalon');
xlabel('Tiempo (s)');
ylabel('Valor de la señal');
grid on
hold on

##Interpolador con Lineal
fm_n=10;
[xt,tt]=interpolador(fm_o,fm_n,x,t,fs,"line");
subplot(2,2,3)
stem(tt,xt)
title('Lineal');
xlabel('Tiempo (s)');
ylabel('Valor de la señal');
grid on
hold on

##Interpolador con sinc
fm_n=10;
[xi,ti]=interpolador(fm_o,fm_n,x,t,fs,"sync");
subplot(2,2,4)
stem(ti,xi)
title('Interpolador Sync');
xlabel('Tiempo (s)');
ylabel('Valor de la señal');
grid on
hold on



