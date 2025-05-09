#EJERCICIO 1
clear all;
clc;
##--------------------------SENOIDAL---------------------#
disp("--------------------------SENOIDAL---------------------")
A=1;
fs=2.5;
fm=1000;
tf=10;
ti=0;
T=1/fm;
t=ti:T:tf-T;
fase=0;
x=A*sin(2*pi*fs*t+fase);
stem(t,x,'filled');
grid on;
hold on

#Valor medio
vm=0;
#maximo
maximo=x(1);
minimo=x(1);
amplitud=max(abs(x));
energia=0;
accion=0;
for i=1:length(t)
  vm+=x(i);
  energia+=(x(i)*x(i));
  accion+=x(i);
  if(x(i)>maximo)
  maximo=x(i);
  endif
  if(x(i)<minimo)
  minimo=x(i);
  endif
endfor

vm=vm/(2*length(t));

disp("Valor medio : ")
vm
disp("Maximo: ")
maximo
disp("Minimo: ")
minimo
disp("Amplitud: ")
amplitud
disp("Energia: ")
energia
disp("Accion: ")
accion
disp("potencia Media: ")
energia/2*length(t)
disp("Raiz del valor cuadratico medio: ")
sqrt(energia/2*length(t))

##--------------------------Rampa---------------------#
disp("--------------------RAMPA------------------------")
x=zeros(length(t),1);
x=mod(t,1);
figure;
stem(t,x,'filled');
grid on;
hold on

#Valor medio
vm=0;
#maximo
maximo=x(1);
minimo=x(1);
amplitud=max(abs(x));
energia=0;
accion=0;
for i=1:length(t)
  vm+=x(i);
  energia+=(x(i)*x(i));
  accion+=x(i);
  if(x(i)>maximo)
  maximo=x(i);
  endif
  if(x(i)<minimo)
  minimo=x(i);
  endif
endfor

vm=vm/(2*length(t));

disp("Valor medio : ")
vm
disp("Maximo: ")
maximo
disp("Minimo: ")
minimo
disp("Amplitud: ")
amplitud
disp("Energia: ")
energia
disp("Accion: ")
accion
disp("potencia Media: ")
energia/2*length(t)
disp("Raiz del valor cuadratico medio: ")
sqrt(energia/2*length(t))

##--------------------------Cuadrada---------------------#
disp("--------------------Cuadrada------------------------")
x=zeros(length(t),1);
x=sign(sin(2*pi*fs*t)/(1/fs));
figure;
stem(t,x,'filled');
grid on;
hold on

#Valor medio
vm=0;
#maximo
maximo=x(1);
minimo=x(1);
amplitud=max(abs(x));
energia=0;
accion=0;
for i=1:length(t)
  vm+=x(i);
  energia+=(x(i)*x(i));
  accion+=x(i);
  if(x(i)>maximo)
  maximo=x(i);
  endif
  if(x(i)<minimo)
  minimo=x(i);
  endif
endfor

vm=vm/(2*length(t));

disp("Valor medio : ")
vm
disp("Maximo: ")
maximo
disp("Minimo: ")
minimo
disp("Amplitud: ")
amplitud
disp("Energia: ")
energia
disp("Accion: ")
accion
disp("potencia Media: ")
energia/2*length(t)
disp("Raiz del valor cuadratico medio: ")
sqrt(energia/2*length(t))

##--------------------------Aleatoria---------------------#
disp("--------------------Aleatoria------------------------")
x=zeros(length(t),1);
x=rand(length(t),1);
figure;
stem(t,x,'filled');
grid on;
hold on

#Valor medio
vm=0;
#maximo
maximo=x(1);
minimo=x(1);
amplitud=max(abs(x));
energia=0;
accion=0;
for i=1:length(t)
  vm+=x(i);
  energia+=(x(i)*x(i));
  accion+=x(i);
  if(x(i)>maximo)
  maximo=x(i);
  endif
  if(x(i)<minimo)
  minimo=x(i);
  endif
endfor

vm=vm/(2*length(t));

disp("Valor medio : ")
vm
disp("Maximo: ")
maximo
disp("Minimo: ")
minimo
disp("Amplitud: ")
amplitud
disp("Energia: ")
energia
disp("Accion: ")
accion
disp("potencia Media: ")
energia/2*length(t)
disp("Raiz del valor cuadratico medio: ")
sqrt(energia/2*length(t))

