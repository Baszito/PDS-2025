#funcion miconv
function [y]=miconv(x,h)
  #Longitud de mis señales de entrada
  nx = length(x);
  nh = length(h);
  #Rango de mi salida :
  n = nx + nh - 1;
  #Inicializo y en 0, suponiendo condiciones iniciales nulas
  y = zeros(1, n);
  #For de convolucion :
  for i = 1:n #para cada elemento de y
    for j = 1:nx #recorro desde 0 hasta el rango de x
      if (i - j + 1 >= 1 && i - j + 1 <= nh) #este doble check es para evitar indices 0 y negativos
        y(i) += x(j) * h(i - j + 1); #+1 porque los indices en octave comienzan en 1
      endif
    endfor
  endfor
endfunction
