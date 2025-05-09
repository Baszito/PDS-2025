function [x, t] = T_sync(tini, tfin, fm, fs)

  clc;
  clear;
  T = 1/fm;
  t  = -tini:T:tfin-T;
  for i=1:length(t)
    if(t(i) == 0)
      x(i) = 1;
    else
      x(i) = sin(2*pi*fs*t(i))/t(i);
    endif
  endfor

endfunction

