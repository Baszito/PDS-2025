#Ejercicio 2
clear all;
clc;
cla;
#Aca la idea es generar 2 senoidales, hacer el producto interno, y de ahi ver
#Parametros comunes :
fm=1000;
tf=2;
ti=0;
T=1/fm;
t=ti:T:tf-T;

#---SEÑALES SIMILARES---#
x1=zeros(length(t),1);
x2=zeros(length(t),1);
#Primera señal
fase1=0;
A1=1;
fs1=2.5;
x1=A1*sin(2*pi*fs1*t+fase1);

#Segunda señal
fase2=0;
A2=1;
fs2=2.5;
x2=A2*sin(2*pi*fs2*t+fase2);

figure(1);
subplot(2,1,1)
plot(t,x1);
title("Señales similares");
grid on;

subplot(2,1,2)
plot(t,x2,'r');
grid on;

PI1=dot(x1,x2)/dot(x2,x2)

#---Cambio Fase---#
x1=zeros(length(t),1);
x2=zeros(length(t),1);
#Primera señal
fase1=0;
A1=1;
fs1=2.5;
x1=A1*sin(2*pi*fs1*t+fase1);

#Segunda señal
fase2=pi*0.5;
A2=1;
fs2=2.5;
x2=A2*sin(2*pi*fs2*t+fase2);

figure(2);
plot(t,x1);
title("Desfasadas");
grid on;
hold on;
plot(t,x2,'r');

PI2=dot(x1,x2)/dot(x2,x2)

#---Cambio de frecuencia---#
x1=zeros(length(t),1);
x2=zeros(length(t),1);
#Primera señal
fase1=0;
A1=1;
fs1=2.5;
x1=A1*sin(2*pi*fs1*t+fase1);

#Segunda señal
fase2=0;
A2=1;
fs2=5;
x2=A2*sin(2*pi*fs2*t+fase2);

figure(3);
plot(t,x1);
title("Cambio de frecuencia");
grid on;
hold on;
plot(t,x2,'r');

PI3=dot(x1,x2)/dot(x2,x2)


#---Cambio de amplitud---#
x1=zeros(length(t),1);
x2=zeros(length(t),1);
#Primera señal
fase1=0;
A1=1;
fs1=2.5;
x1=A1*sin(2*pi*fs1*t+fase1);

#Segunda señal
fase2=0;
A2=5;
fs2=2.5;
x2=A2*sin(2*pi*fs2*t+fase2);

figure(4);
plot(t,x1);
title("Cambio de amplitud");
grid on;
hold on;
plot(t,x2,'r');

PI4=dot(x1,x2)/dot(x2,x2)

#---Cambio de TODO---#
x1=zeros(length(t),1);
x2=zeros(length(t),1);
#Primera señal
fase1=0;
A1=1;
fs1=2.5;
x1=A1*sin(2*pi*fs1*t+fase1);

#Segunda señal
fase2=0.7*pi;
A2=3;
fs2=4;
x2=A2*sin(2*pi*fs2*t+fase2);

figure(5);
plot(t,x1);
title("Cambio de TODO");
grid on;
hold on;
plot(t,x2,'r');

PI5=dot(x1,x2)/dot(x2,x2)
