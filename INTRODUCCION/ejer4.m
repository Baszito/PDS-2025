##Ejer4
fs=5;

##Frecuencia de muestreo = 100 hz
fm=100;
T=1/fm;
t=0:T:1-T;
x=sin(2*pi*fs*t);
subplot(3,3,1)
stem(t,x)
grid on

##Frecuencia de muestreo = 25 hz
fm=25;
T=1/fm;
t=0:T:1-T;
x=sin(2*pi*fs*t);
subplot(3,3,2)
stem(t,x)
grid on

##Frecuencia de muestreo = 10 hz
fm=10;
T=1/fm;
t=0:T:1-T;
x=sin(2*pi*fs*t);
subplot(3,3,3)
stem(t,x)
grid on

##Frecuencia de muestreo = 44 hz
fm=4;
T=1/fm;
t=0:T:1-T;
x=sin(2*pi*fs*t);
subplot(3,3,4)
stem(t,x)
grid on

##Frecuencia de muestreo = 1 hz
fm=1;
T=1/fm;
t=0:T:1-T;
x=sin(2*pi*fs*t);
subplot(3,3,5)
stem(t,x)
grid on

##Frecuencia de muestreo = 0.5 hz
fm=0.5;
T=1/fm;
t=0:T:1-T;
x=sin(2*pi*fs*t);
subplot(3,3,6)
stem(t,x)
grid on


##Solo se observa la sinusoidal correctametne en 100,25 y muy incorrectamente en 10 hz. Eso es
##Por la relacion 2*fs<=fm
