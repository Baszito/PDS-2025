clc;
#EL NUMERO ES :
#2428265
clear all;
cla;
h=load('te.txt');
hsize=length(h);
fm=11025;
T=1/fm;
t=0:T:(T*hsize)-T;

figure(1);
plot(t,h)
grid on
hold on

y=[697 770 852 941];
x=[1209 1336 1477];
fases=linspace(-pi,pi,3);
#Matriz con filas
filas=zeros(length(t),length(fases),length(y));
columnas=zeros(length(t),length(fases),length(x));
disp('calculos1');
for i=1:length(t)
  for j=1:length(fases)
    for k=1:length(y)
      filas(i,j,k)=sin(2*pi*y(k)*t(i)+fases(j));
    endfor
    for k=1:length(x)
      columnas(i,j,k)=sin(2*pi*x(k)*t(i)+fases(j));
    endfor
  endfor
endfor
disp('calculos2');
##Productos internos
priF=zeros(length(fases),length(y));
priC=zeros(length(fases),length(x));
for i=17109:21790
  for j=1:length(fases)
    for k=1:length(y)
      priF(j,k)+=h(i)*filas(i,j,k);
    endfor
    for k=1:length(x)
      priC(j,k)+=h(i)*columnas(i,j,k);
    endfor
  endfor
endfor

disp('calculos3');
##Comparacion fila, columna
  filaC=0;
  columnaC=0;
  primaxF=-100000000;
  primaxC=-100000000;
  for i=1:length(fases)
      for j=1:length(y)
        if(primaxF<priF(i,j))
          filaC=j;
          primaxF=priF(i,j);
        endif
      endfor
      for j=1:length(x)
        if(primaxC<priC(i,j))
          columnaC=j;
          primaxC=priC(i,j);
        endif
      endfor
  endfor

switch(filaC)
  case 1
    if (columnaC==1)
      numero=1;
    elseif(columnaC==2)
      numero=2;
    else
      numero=3;
    endif
  case 2
    if(columnaC==1)
      numero=4;
    elseif(columnaC==2)
      numero=5;
    else
      numero=6;
    endif
  case 3
    if(columnaC==1)
      numero=7;
    elseif(columnaC==2)
      numero=8;
    else
      numero=9;
    endif
  otherwise
    numero=0;
endswitch
numero
