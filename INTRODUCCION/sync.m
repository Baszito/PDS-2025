##Sync para el TP 1
function [x,t]=sync(tini, tfin, fm, fs)
  T = 1/fm;
  t=tini:T:tfin-T;
  for i=1:length(t)
     if(t(i) == 0)
       x(i) = 1;
    else
       x(i) = sin(2*pi*fs*t(i))/(2*pi*fs*t(i));
     endif
  endfor
endfunction
