#Ejercicio5
clc;
clear all;
cla;
#EL NUMERO ES :
#2428265
#Carga de datos :
h=load('te.txt');
hsize=length(h);
fm=11025;

#periodo de muestreo
T=1/fm;
t=0:T:(T*hsize)-T;
#grafico de la señal con ruido
figure(1);
plot(t,h)
grid on
hold on
#Vectores con las frecuencias de las filas y columnas
y=[697 770 852 941];
x=[1209 1336 1477];
fases=linspace(-pi,pi,20);
#Con una revision visual, se establecieron periodos en donde hay señales correspondiente a teclas
#Con eso, se establece un vector de indices
indices=[17109 21790;
         29895 34966;
         39421 43654;
         48200 53014;
         58514 63788;
         69289 74512;
         80296 85755];

##Productos internos
disp('Calculo de productos internos : ');
for g=1:7
  segmento=h(indices(g,1):indices(g,2));
  t=0:T:(length(segmento)*T)-T;
  priF=zeros(length(fases),length(y));
  priC=zeros(length(fases),length(x));
  for j=1:length(fases)
    for k=1:length(y)
      fila = sin(2*pi*y(k)*t+fases(j));
      priF(j,k)=dot(segmento,fila);
    endfor
    for k=1:length(x)
      columna=sin(2*pi*x(k)*t+fases(j));
      priC(j,k)=dot(segmento,columna);
    endfor
  endfor
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
endfor


