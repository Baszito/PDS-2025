#ejercicio 4
clc;
clear all;
#Exploracion con una señal senoidal
fm=100;
T=1/fm;


##Ventana rectangular :
t=-0.5+T:T:0.5-T;
wr=zeros(1,length(t));
for i=45:55;
  wr(i)=1;
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
figure;
subplot(3,2,1);
stem(t,wr);
subplot(3,2,2);
stem(wr_c,abs(wr_f));

t=-0.5+T:T:0.5-T;
wr=zeros(1,length(t));
for i=30:70;
  wr(i)=1;
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,3);
stem(t,wr);
subplot(3,2,4);
stem(wr_c,abs(wr_f));

t=-0.5+T:T:0.5-T;
wr=zeros(1,length(t));
for i=10:90;
  wr(i)=1;
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,5);
stem(t,wr);
subplot(3,2,6);
stem(wr_c,abs(wr_f));

##Ventana de Hanning
t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=10;
for i = 0 : 2*v
  wr(ceil(length(t)/2)-v+i)=0.5-0.5*cos((2*pi*i)/(2*v));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
figure;
subplot(3,2,1);
stem(t,wr);
subplot(3,2,2);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=20;
for i = 0 : 2*v
  wr(ceil(length(t)/2)-v+i)=0.5-0.5*cos((2*pi*i)/(2*v));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,3);
stem(t,wr);
subplot(3,2,4);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=50;
for i = 0 : 2*v
  wr(ceil(length(t)/2)-v+i)=0.5-0.5*cos((2*pi*i)/(2*v));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,5);
stem(t,wr);
subplot(3,2,6);
stem(wr_c,abs(wr_f));

##Ventana de Hamming
t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=10;
for i = 0 : 2*v
  wr(ceil(length(t)/2)-v+i) = 27/50 - 23/50 * cos((2*pi*i)/(2*v));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
figure;
subplot(3,2,1);
stem(t,wr);
subplot(3,2,2);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=20;
for i = 0 : 2*v
  wr(ceil(length(t)/2)-v+i) = 27/50 - 23/50 * cos((2*pi*i)/(2*v));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,3);
stem(t,wr);
subplot(3,2,4);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=50;
for i = 0 : 2*v
  wr(ceil(length(t)/2)-v+i) = 27/50 - 23/50 * cos((2*pi*i)/(2*v));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,5);
stem(t,wr);
subplot(3,2,6);
stem(wr_c,abs(wr_f));

##Ventana de Bartlett
t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=10;
for i = 0 : v;
  wr(ceil(length(t)/2)-v+i)=(2*i)/(2*v);
endfor
for i = v : 2*v;
  wr(ceil(length(t)/2)-v+i)=2-(2*i)/(2*v);
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
figure;
subplot(3,2,1);
stem(t,wr);
subplot(3,2,2);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=20;
for i = 0 : v;
  wr(ceil(length(t)/2)-v+i)=(2*i)/(2*v);
endfor
for i = v : 2*v;
  wr(ceil(length(t)/2)-v+i)=2-(2*i)/(2*v);
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,3);
stem(t,wr);
subplot(3,2,4);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=50;
for i = 0 : v;
  wr(ceil(length(t)/2) - v + i)=(2*i)/(2*v);
endfor
for i = v : 2*v;
  wr(ceil(length(t)/2) - v + i)=2-(2*i)/(2*v);
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,5);
stem(t,wr);
subplot(3,2,6);
stem(wr_c,abs(wr_f));

##Ventana de Blackman
t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=10;
for i = 0 : 2*v;
  wr(ceil(length(t)/2) - v + i)=21/50-(1/2* cos((2*pi*i)/(2*v)))+(2/25* cos((4*pi*i)/(2*v)));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
figure;
subplot(3,2,1);
stem(t,wr);
subplot(3,2,2);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=20;
for i = 0 : 2*v;
  wr(ceil(length(t)/2) - v + i)=21/50-(1/2* cos((2*pi*i)/(2*v)))+(2/25* cos((4*pi*i)/(2*v)));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,3);
stem(t,wr);
subplot(3,2,4);
stem(wr_c,abs(wr_f));

t=-1+T:T:1-T;
wr=zeros(1,length(t));
v=50;
for i = 0 : 2*v;
  wr(ceil(length(t)/2) - v + i)=21/50-(1/2* cos((2*pi*i)/(2*v)))+(2/25* cos((4*pi*i)/(2*v)));
endfor
[wr_f,wr_c]=centrar_frecuencias(fft(wr),fm,length(t));
subplot(3,2,5);
stem(t,wr);
subplot(3,2,6);
stem(wr_c,abs(wr_f));
