##Funcion para calcular potencia
function [P,db]=potencia(x)
  xsum=0;
  for i=1:length(x)
    xsum+=(abs(x(i))^2);
  endfor
  P=xsum/length(x);
  db=10*log10(P);
endfunction
