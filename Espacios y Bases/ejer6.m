clc;
clear all;
cla;
[y,fs]=audioread('escala.wav');
sound(y,fs);
ti=0;
tf=4;
T=1/fs;
t=0:T:(length(y)*T)-T;

plot(t,y);
grid on;
hold on;

fases=linspace(-pi,pi,10);
frecuencias=[261.63 293.66 329.63 349.23 392.00 440.00 493.88 523.25];
#Uno de los datos es que cada nota dura 0.5 segundos, asi que
duracion=round(0.5*fs);

indices=[1 5513 5513*2 5513*3 5513*4 5513*5 5513*6 5513*7 5513*8];

disp('calculando productos internos')
for g=0:7
  idxi = g * duracion + 1;
  idxf = idxi + duracion - 1;
  segmento = y(idxi:idxf);
  t = (0:duracion - 1) / fs;

  frecuen = 0;
  primax = -1000000;

  for j = 1:length(frecuencias)
    for k = 1:length(fases)
      nota = sin(2 * pi * frecuencias(j) * t + fases(k));
      priactual = dot(segmento, nota);
      if priactual > primax
        primax = priactual;
        frecuen = j;
      endif
    endfor
  endfor
   switch(frecuen)
    case 1
      disp('DO')
    case 2
      disp('RE')
    case 3
      disp('MI')
    case 4
      disp('FA')
    case 5
      disp('SOL')
    case 6
      disp('LA')
    case 7
      disp('SI')
    case 8
      disp('DO+')
    otherwise
      disp('Frecuencia erronea')
      endswitch
endfor




