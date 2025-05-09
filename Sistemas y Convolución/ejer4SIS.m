#Ejercicio 4
clc;clear all;cla;
n=0:1:50;#cantidad de elementos que vamos a evaluar
dirac=zeros(1,length(n));
dirac(1)=1;

x=dirac;
#Ecuacion 1 :
#Es un sistema IIR, AR
for i=1:length(n);
  if(i<3)
    y(i)=x(i);
  else
    y(i)=x(i)+y(i-2);
  endif
endfor

figure(1);
stem(n,y,'filled')
title("Ecuacion (1) : y[n]=x[n]+y[n-2]");
grid on

#Ecuacion 2 :
#Es un sistema FIR
for i=1:length(n);
  if(i<2)
    y(i)=x(i);
  else
    y(i)=x(i)+0.5*x(i-1);
  endif
endfor

figure(2);
stem(n,y,'filled')
title("Ecuacion () : y[n]=x[n]+0.5*x[n-1]");
grid on

#Ecuacion 3 :
#Es un sistema FIR
for i=1:length(n);
  if(i<3)
    y(i)=x(i);
  else
    y(i)=x(i)-0.25*y(i-2)+0.5*y(i-1);
  endif
endfor

figure(3);
stem(n,y,'filled')
title("Ecuacion (3) : y[n]=x[n]+0.5*y[n-1]-0.25*y[n-2]");
grid on


