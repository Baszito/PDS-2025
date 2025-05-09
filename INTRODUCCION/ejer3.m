##Ejer3
##Para comprobar, recreamos la senoidal discreta :
A=3;#Amplitud
fm=800;#Frecuencia de muestreo
fs=1/0.05;#Frecuencia de la senoidal
t1=6.25e-3; ##Retardo
phi=-2*pi*fs*t1;#Fase
Tm=1/fm;#Periodo de muestreo

t=0:Tm:0.1-Tm;
x=A*sin(2*pi*fs*t+phi);
stem(t,x)
grid on
hold on
