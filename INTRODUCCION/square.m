##Square para el TP 1
function [x,t]=square(tini, tfin, fm, fs, fase)

  T = 1/fm;
  t=tini:T:tfin-T;
  for i=1:length(t)
     if( mod((2*pi*fs*t(i))+fase,2*pi) >=pi)
       x(i) = -1;
    else
       x(i) = 1;
     endif
  endfor
endfunction
