#POPURRI REPASO PARCIAL :
clc
clear all
cla
#---------------Ejercicio 2---------------:
#SEÑAL BASE
fm=100;
fs=2;
T=1/fm;
t=0:T:1-T;

y=sin(2*pi*fs*t);
subplot(4,1,1)
plot(t,y);
grid on
hold on

#Inversion = Operacion sobre el dominio
yinv=sin(2*pi*fs*(-t));
subplot(4,1,2)
plot(t,yinv);
grid on
hold on

#rectificacion de onda completa = Operacion sobre el rango
yrec=abs(sin(2*pi*fs*(t)));
subplot(4,1,3)
plot(t,yrec);
grid on
hold on

#Cuantificacion= Operacion sobre el rango



for i=1:length(t)
  aux(i)=y(i)-min(y);
endfor

N=8;
H=(abs(min(y))+abs(max(y)) )/(N-1);

for i=1:length(y)
  if(aux(i)<0)
    ycua(i) = 0;
  elseif ((aux(i)>=0) && (aux(i)<((N-1)*H)))
    ycua(i)=H*floor(aux(i)/H);
  else
    ycua(i)=(N-1)*H;
  endif
endfor

for i=1:length(t)
  ycua(i)=ycua(i)+min(y);
endfor
subplot(4,1,4)
plot(t,ycua);
grid on
hold on



