#Ejercicio 2
clc;
clear all;
#muestreo
fm=100;
T=1/fm;
t=0:T:1-T;

#primer señal :
fs1=2;
s1=sin(2*pi*fs1*t);

#segunda señal :
fs2=2;
s2=square(2*pi*fs2*t);

#tercera señal :
fs3=4;
s3=sin(2*pi*fs3*t);
#grafica :
figure;
subplot(3,1,1);
stem(t,s1);
subplot(3,1,2);
stem(t,s2);
subplot(3,1,3);
stem(t,s3);

#1)Revisar ortogonalidad de las señales ortogonales
disp('1 ) SEÑALES EN EL DOMINIO TEMPORAL');
if(dot(s1,s2)<1e-12)
  disp('a y b son ortogonales');
else
   disp('a y b NO son ortogonales');
endif

if(dot(s1,s3)<1e-12)
  disp('a y c son ortogonales');
else
   disp('a y c NO son ortogonales');
endif

if(dot(s2,s3)<1e-12)
  disp('b y c son ortogonales');
else
   disp('b y c NO son ortogonales');
endif

#2)Calcular TDF y revisar ortogonalidad de estas nuevas señales
sf1=fft(s1);
sf2=fft(s2);
sf3=fft(s3);

disp('2 ) SEÑALES EN EL DOMINIO FRECUENCIAL');
if(dot(sf1,sf2)<1e-12)
  disp('a y b son ortogonales');
else
   disp('a y b NO son ortogonales');
endif

if(dot(sf1,sf3)<1e-12)
  disp('a y c son ortogonales');
else
   disp('a y c NO son ortogonales');
endif

if(dot(sf2,sf3)<1e-12)
  disp('b y c son ortogonales');
else
   disp('b y c NO son ortogonales');
endif


#3)Modificar c, revisar ortogonalidad en ambos dominios
s4=sin(2*pi*3.5*t);
sf4=fft(s4);
disp('Comparacion entre una senoidal de 2hz y 3.5hz');
disp('Dominio temporal');
if(dot(s1,s4)<1e-12)
  disp('En el dominio temporal son ortogonales');
else
   disp('En el dominio temporal NO son ortogonales');
endif

disp('Dominio frecuencial');
if(dot(sf1,sf4)<1e-12)
  disp('En el dominio frecuencial son ortogonales');
else
   disp('En el dominio frecuencial NO son ortogonales');
endif

