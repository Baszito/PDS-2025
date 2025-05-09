#Ejercicio 4
clear all;
cla;
clc;
##--------------------------SENOIDAL---------------------#
A=1;
fs=1:1:10;
fm=100;
tf=5;
ti=0;
T=1/fm;
t=ti:T:tf-T;
fase=0;
alfa=rand(10,1);
#----------------------------------------------------------------A----------------------------------------------------------------#
#Genero las diez señales
yA=zeros(length(fs),length(t)); #Primer indice frecuencia, segundo indice tiempo
ysumA=zeros(length(t),1);#combinacion lineal

for j=1:length(t)
  for i=1:length(fs)
    yA(i,j)=A*sin(2*pi*fs(i)*t(j)+fase);
    ysumA(j)+=alfa(i)*yA(i,j);
  endfor
endfor

figure(1)
subplot(2,1,1)
plot(t,ysumA);
title('A ) Señal combinacion lineal, coeficientes aleatorios');
grid on;
hold on;
#Calculo de similitud + grafico de barras
for i=1:length(fs)
  similitud(i)=dot(ysumA,yA(i,:))/dot(ysumA,ysumA);
endfor
subplot(2,1,2)
bar(similitud)
title('A ) Barras de similitud');

#----------------------------------------------------------------B----------------------------------------------------------------#
#Genero las diez señales con cambios de fase
yB=zeros(length(fs),length(t)); #Primer indice frecuencia, segundo indice tiempo
ysumB=zeros(length(t),1);#combinacion lineal
fase=-1:0.2:1;
for j=1:length(t)
  for i=1:length(fs)
    yB(i,j)=A*sin(2*pi*fs(i)*t(j)+fase(i)*pi);
    ysumB(j)+=alfa(i)*yB(i,j);
  endfor
endfor

figure(2)
subplot(2,1,1)
plot(t,ysumB);
title('B ) Señal combinacion lineal con cambios de fase');
grid on;
hold on;
#Calculo de similitud + grafico de barras
for i=1:length(fs)
  similitud(i)=dot(ysumB,yB(i,:))/dot(ysumB,ysumB);
endfor
subplot(2,1,2)
bar(similitud)
title('B ) Barras de similitud');

#----------------------------------------------------------------C----------------------------------------------------------------#
#Genero las diez señales con cambios de fase
cua=zeros(length(t),1);
cua=sign(sin(2*pi*5.5*t)/(1/5.5));

figure(3)
subplot(3,1,1)
plot(t,ysumA);
title('C ) Señal combinacion');
grid on;
hold on;
subplot(3,1,2)
plot(t,cua);
title('C ) Señal cuadrada');
#Calculo de similitud + grafico de barras
for i=1:length(fs)
  similitud(i)=dot(yA(i,:),cua)/dot(cua,cua);
endfor
subplot(3,1,3)
bar(similitud)
title('C ) Barras de similitud');
