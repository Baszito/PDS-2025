#Ejercicio 3
cla
clear all
clc
#Parametros comunes :
ti=-1;
tf=1;
fm=100;
T=1/fm;
t=ti:T:tf-T;

#Funcion que se desea aproximar :
y=zeros(length(t),1);
for i=1:length(t)
  if(t(i)<0)
    y(i)=-1;
  else
    y(i)=1;
    endif
endfor
figure(1);
plot(t,y,'linewidth',2,';Funcion original;')
axis([-2 2 -2 2]);
hold on
grid on

#A)Aproximacion del ejemplo
yA=zeros(length(t),1);
for i=1:length(t)
    yA(i)=(45/16)*t(i)-(35/16)*t(i)^3;
endfor
plot(t,yA,';4 coeficientes;')

#Error cuadratico total :
disp("A ) Error cuadratico total : ")
norm(y-yA,2)^2

#C)Aproximacion con 1 polinomios mas
yC=zeros(length(t),1);
for i=1:length(t)
    yC(i)=(45/16)*t(i)-(35/16)*t(i)^3+ (sqrt(11/2))*(1/64)*((63*(t(i)^5))-(70*(t(i)^3))+(15*t(i)));
endfor
plot(t,yC,';6 coeficientes;')
disp("C ) Error cuadratico total : ")
norm(y-yC,2)^2

#B)Aproximacion con variaciones :
alfa1=sqrt(3/2);
alfa2=-sqrt(7/32);
variacion=-1:0.1:1;
beta1=alfa1+variacion;
beta2=alfa2+variacion;

for k=1:length(beta2)
  for j=1:length(beta1)
    yB=zeros(length(t),1);
    for i=1:length(t)
      yB(i)=beta1(j)*(sqrt(3/2)*t(i)) + beta2(k)*(sqrt(7/2)*(((5/2)*(t(i)^3)) - ((3/2)*(t(i)))));
    endfor
   ect(j,k)=norm(y-yB,2)^2;
  endfor
endfor
figure(2)
surf(variacion,variacion,ect)


