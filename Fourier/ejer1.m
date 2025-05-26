#Ejercicio 1
clc;
clear all;
##Datos del ejercicio :
f1=10;
f2=20;
T=0.001;
fm=1/T;
t=0:T:1-T;
s=sin(2*pi*f1*t)+4*sin(2*pi*f2*t);

#Grafica para darme una idea
figure;
stem(t,s);
title('Señal original');
ylabel('Valor');
xlabel('Tiempo t');

#1) Calcular la TDF :
sf=fft(s);
N=length(t);
[sf_c,f_c]=centrar_frecuencias(sf,fm,N);
figure;
subplot(3,1,1);
stem(f_c,real(sf_c),'b');
title('Parte real')
xlabel('Frecuencias (Hz)')
subplot(3,1,2);
stem(f_c,imag(sf_c),'r');
title('Parte imaginaria')
xlabel('Frecuencias (Hz)')
subplot(3,1,3);
#Espectro de magnitudes : Magnitud de la TDF
#Espectro de fase : Angulo entre la parte real e imaginaria de TDF
stem(f_c,abs(sf_c),'g');
title('Magnitud')
xlabel('Frecuencias (Hz)')

#Verificar relacion de Parseval :
e_original=norm(s,2)^2;
e_fourier=(1/N)*(norm(sf,2)^2);
#Para ver la igualdad, comparamos con 1e-12 para no comernos un error numerico
if((e_original-e_fourier) < 1e-12) disp('Se cumple la relacion');
else disp('No se cumple la relacion');
endif

#Segunda parte :
#2-1 :
s=sin(2*pi*f1*t)+4*sin(2*pi*f2*t)+4;
sf=fft(s);
[sf_c,f_c]=centrar_frecuencias(sf,fm,N);
figure;
subplot(2,2,1);
stem(f_c,abs(sf_c));
title('s[n]+4')
xlabel('Frecuencias (Hz)')

#2-2 :
f1=10;
f2=11;
s=sin(2*pi*f1*t)+4*sin(2*pi*f2*t);
sf=fft(s);
[sf_c,f_c]=centrar_frecuencias(sf,fm,N);
subplot(2,2,2);
stem(f_c,abs(sf_c));
title('f2=11hz');
xlabel('Frecuencias (Hz)');

#2-3 :
f1=10;
f2=10.5;
s=sin(2*pi*f1*t)+4*sin(2*pi*f2*t);
sf=fft(s);
[sf_c,f_c]=centrar_frecuencias(sf,fm,N);
subplot(2,2,3);
stem(f_c,abs(sf_c));
title('f2=10.5hz')
xlabel('Frecuencias (Hz)')

#2-4 :
f1=10;
f2=20;
t=0:T:2-T;
N=length(t);
s=sin(2*pi*f1*t)+4*sin(2*pi*f2*t);
sf=fft(s);
[sf_c,f_c]=centrar_frecuencias(sf,fm,N);
subplot(2,2,4);
stem(f_c,abs(sf_c));
title('t=[0...2]')
xlabel('Frecuencias (Hz)')

