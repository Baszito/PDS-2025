##Ejercicio 7 :
clc
clear
#Primero, debemos realizar distintas realizaciones de una señal aleatoria.
#Supongamos un par de datos fijos :

fm=10;
tini=0;
tfin=1;
T=1/fm;
t=tini:T:tfin-T;
cant_muestras = 5;
M=randn(cant_muestras,length(t));
figure(1)
plot(t,M)
title("Realizaciones")
grid on
hold on

##Ahora, calculamos las medias.
#Para eso, la funcion MEAN calcula la media de la matriz en la dimension que le de
#Lo mismo la funcion Varianza
media_c=mean(M);
varianza_c=var(M);
tolerancia=0.001;
es_estacionaria=1;
primer_media=media_c(1);
primer_varianza=varianza_c(1);
for i=1:length(cant_muestras);
    if((media_c(i)>(primer_media+tolerancia)) || (media_c(i)<primer_media-tolerancia))
        es_estacionaria=0;
    endif
    if((varianza_c(i)>(primer_varianza+tolerancia)) || (varianza_c(i)<primer_varianza-tolerancia))
        es_estacionaria=0;
    endif
endfor
if(es_estacionaria==1)
  disp('Es estacionaria')
else
  disp('No es estacionaria')
endif

M=M';
media_c=mean(M);
varianza_c=var(M);
tolerancia=0.001;
es_ergodica=1;
primer_media=media_c(1);
primer_varianza=varianza_c(1);
for i=1:length(cant_muestras);
    if((media_c(i)>(primer_media+tolerancia)) || (media_c(i)<primer_media-tolerancia))
        es_ergodica=0;
    endif
    if((varianza_c(i)>(primer_varianza+tolerancia)) || (varianza_c(i)<primer_varianza-tolerancia))
        es_ergodica=0;
    endif
endfor
##Pequeña salvedad, para que sea ergodica tiene que ser estacionaria, asi que =
if(es_estacionaria!=1)
  es_ergodica=0;
endif
if(es_ergodica==1)
  disp('Es Ergodica')
else
  disp('No es Ergodica')
endif




