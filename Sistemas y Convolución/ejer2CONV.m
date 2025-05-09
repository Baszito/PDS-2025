#Ejercicio 2 - Convolucion
clc;
clear all
x=[1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4];
N=length(x);
h=rand(1,N);

ngraf=0:1:N-1;
subplot(3,1,1);
stem(ngraf,x,'filled');
grid on;
subplot(3,1,2);
stem(ngraf,h,'filled');
grid on;

y=convo_circular(x,h);
ngraf=0:1:length(y)-1;
subplot(3,1,3);
stem(ngraf,y,'filled');
grid on;
