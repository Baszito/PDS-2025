##Ejercicio 2
##1-Señal senoidal base
fm=1000;
fs=0.5;
tini=-10;
tfin=10;
T=1/fm;
t=tini:T:tfin-T;
x=sin(2*pi*fs*t);
subplot(5,1,1)
plot(t,x);
grid on

##Inversion
xinv=-sin(2*pi*fs*t);
subplot(5,1,2)
plot(t,xinv);
grid on

##Rectificacion de onda completa (valor absoluto)
xrec1=abs(x);
subplot(5,1,3)
plot(t,xrec1);
grid on

##Rectificacion de onda completa (valor absoluto)
for i=1:length(x)
  if(x(i)<0)
    xrec2(i)=0;
  else
    xrec2(i)=x(i);
  endif
endfor
subplot(5,1,4)
plot(t,xrec2);
grid on

##Cuantizacion
N=8;
xmin=min(x);
xmax=max(x);
H=(abs(xmin)+abs(xmax))/(N-1);#2 porque el seno va entre -1 y 1
for i=1:length(x)
  xcorregido(i)=x(i)-xmin;
endfor

for i=1:length(x)
  if(xcorregido(i)<0)
    xcua(i) = 0;
  elseif ((xcorregido(i)>=0) && (xcorregido(i)<((N-1)*H)))
    xcua(i)=H*floor(xcorregido(i)/H);
  else
    xcua(i)=(N-1)*H;
  endif
endfor

for i=1:length(xcua)
  xcua(i)=xcua(i)+xmin;
endfor

subplot(5,1,5)
plot(t,xcua);
grid on
