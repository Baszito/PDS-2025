##Senoidal Moda para el TP 1
function [x,t]=senoidal(tini, tfin, fase, fs, fm, A)
  T = 1/fm;##Paso
  t = tini:T:tfin-T;
  x = A*sin(2*t*pi*fs+fase);
endfunction
