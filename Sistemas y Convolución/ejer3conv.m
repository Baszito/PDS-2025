#Ejericicio 3
clc;clear all;
N=10;
n=1:N;
a=0.5;
delta=zeros(1,N);delta(1)=1;

#Funcion X de entrada :
x=zeros(1,N);
for i=1:N
  if(i>=2)#Para no pasarme de los indices
  x(i)=delta(i) - a*delta(i-1);
  else
  x(i)=delta(i);
  endif
endfor

#Respuestas al impulso :
hA=sin(8.*n);
hB=a.^n;

#Calculo de convoluciones :
#-------------------------- | hA->hB |--------------------------#
yA=convo_circular(x,hA);
yA=convo_circular(yA,hB);
nconv=1:(N+(N+N-1)-1);
subplot(2,1,1);
stem(nconv,yA,'filled');
grid on;
title("hA->hB");

#-------------------------- | hB->hA |--------------------------#
yB=convo_circular(x,hB);
yB=convo_circular(yB,hA);
nconv=1:(N+(N+N-1)-1);
subplot(2,1,2);
stem(nconv,yB,'filled');
grid on;
title("hB->hA");
