#Funcion para realizar la convolucion circular discreta
function y=convo_circular(x,h)
  #Longitud de mis señales de entrada
  nx = length(x);
  nh = length(h);
  #Rango de mi salida :
  n = nx + nh - 1;
  #Inicializo y en 0, suponiendo condiciones iniciales nulas
  y = zeros(1, n);
  #For de convolucion :
  for k=1:n
    for l=1:nh
      aux=mod((n+k-l),nx)+1;
      y(k)+= h(l) * x(aux);
    endfor
  endfor
endfunction
