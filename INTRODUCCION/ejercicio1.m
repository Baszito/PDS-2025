#ejercicio 1
clc;
clear;
fm=1000;
fs=5;
A=2;
tini=-1;
tfin=1;


[x,t]=senoidal(tini,tfin,0,fs,fm,A);
subplot(3,1,1)
plot(t,x)
grid on
hold on

x=0;
t=0;

[x,t]=sync(tini,tfin,fm,fs);
subplot(3,1,2)
plot(t,x)

grid on
hold on

x=0;
t=0;

[x,t]=square(tini,tfin,fm,fs,0);
subplot(3,1,3)
plot(t,x)

grid on
hold on
