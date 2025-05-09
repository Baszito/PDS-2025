#Ejercicio 6
clc
clear all
ti=0;
tf=5;
fs1 = 1;
fm1 = 10;
T1=1/fm1;
t1=ti:T1:tf-T1;
y1=sin(2*pi*fs1*t1);
subplot(2,1,1)
stem(t1,y1)
title('Señal original')
grid on

#Interpolador :
fm2=40;
T2=1/fm2;
fs2=0.5;
t2=ti:T2:tf-T2;
y2=zeros(length(t2),1);
for i=1:length(t2)
  for j=1:length(t1)
    Ts=(T2*i-T1*j)/(T1);
    y2(i)+=y1(j)*sync_t(Ts,fs2);
  endfor
endfor
subplot(2,1,2)
stem(t2,y2)
title('Señal interpolada')
grid on
